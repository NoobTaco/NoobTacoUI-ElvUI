local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))
local DT = E:GetModule('DataTexts')

--[[
    NoobTacoUI-ElvUI: Guild Notes Module
    Adds guild notes to the member list in the Guild DataText tooltip.
    Format: Charactername (Note)
]]

function NoobTacoUI:SetupGuildNotes()
  local data = DT.RegisteredDataTexts['Guild']
  if not data or not data.onEnter then return end

  -- We hook the onEnter function of the Guild DataText
  local originalOnEnter = data.onEnter
  data.onEnter = function(self, ...)
    -- 1. Build a mapping of member names to notes
    local guildNotes = {}
    if IsInGuild() then
      for i = 1, GetNumGuildMembers() do
        local name, _, _, _, _, _, note = GetGuildRosterInfo(i)
        if name and note and note ~= "" then
          -- Strip realm for matching, as ElvUI does in the tooltip
          local cleanName = name:match("([^%-]+)")
          if cleanName then
            guildNotes[cleanName] = note
          end
        end
      end
    end

    -- 2. Hook tooltip.AddDoubleLine to inject the note
    local originalAddDoubleLine = DT.tooltip.AddDoubleLine
    DT.tooltip.AddDoubleLine = function(tooltip, leftText, rightText, ...)
      if leftText and type(leftText) == "string" then
        local charName

        -- Check for normal list format: Faction|cffRRGGBBLevel|r Name...
        -- Pattern matches the name part in ElvUI's levelNameStatusString
        charName = leftText:match("|cff%x%x%x%x%x%x%d+|r%s+([^%s|*]+)")

        -- If shift is held, ElvUI uses nameRankString: Faction Name|cff999999-|cffffffff Rank
        if not charName and IsShiftKeyDown() then
          charName = leftText:match("^|A:.-|a%s*([^%s|*]+)|cff999999%-") or leftText:match("^%s*([^%s|*]+)|cff999999%-")
        end

        if charName and guildNotes[charName] then
          local note = guildNotes[charName]
          -- Inject the note after the name, but before any trailing status markers (AFK, DND, etc)
          -- We use a simple gsub with limit 1 to replace the first occurrence of the name
          -- We wrap the note in a subtle gray color
          leftText = leftText:gsub(charName, charName .. " (|cffbbbbbb" .. note .. "|r)", 1)
        end
      end
      return originalAddDoubleLine(tooltip, leftText, rightText, ...)
    end

    -- 3. Execute the original onEnter
    local status, err = pcall(originalOnEnter, self, ...)

    -- 4. Restore the original AddDoubleLine
    DT.tooltip.AddDoubleLine = originalAddDoubleLine

    if not status then
      -- If the original errored, we should still have restored the hook above
      error(err)
    end
  end
end
