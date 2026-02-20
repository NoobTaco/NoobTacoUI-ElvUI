local addonName, Engine = ...
local NoobTacoUIElv = Engine.NoobTacoUIElv
local E = Engine.E
local MyPluginName = "NoobTacoUI-ElvUI"

local EditModeLayoutName = "NoobTacoUIElv"

function NoobTacoUIElv:ApplyEditModeLayout()
  if not NoobTacoUIElv.IsRetail then return end

  -- Ensure Blizzard Edit Mode is loaded
  if not _G.C_AddOns.IsAddOnLoaded("Blizzard_EditMode") then
    _G.C_AddOns.LoadAddOn("Blizzard_EditMode")
  end

  local LibEditMode = LibStub("LibEditModeOverride-1.0", true)
  if not LibEditMode then return end

  -- Initialize Library Logic
  LibEditMode:LoadLayouts()

  -- Create layout if it doesn't exist
  if not LibEditMode:DoesLayoutExist(EditModeLayoutName) then
    LibEditMode:AddLayout(Enum.EditModeLayoutType.Account, EditModeLayoutName)
  end

  -- Set as active
  LibEditMode:SetActiveLayout(EditModeLayoutName)

  -- 1. Enable Cooldown Manager (Account Setting)
  local showCooldownSetting = Enum.EditModeAccountSetting and Enum.EditModeAccountSetting.ShowCooldownViewer
  if showCooldownSetting then
    LibEditMode:SetGlobalSetting(showCooldownSetting, 1)
  end

  -- 2. Position and Configure Requested Frames
  -- We use the exact coordinates, anchors, and settings extracted/provided
  local framesToConfigure = {
    -- { frame, name, point, relativeTo, relativePoint, x, y, settings = { [id] = value } }
    {
      frame = _G.EssentialCooldownViewer,
      name = "Essential Cooldowns",
      p = "BOTTOM",
      rt = "UIParent",
      rp = "BOTTOM",
      x = 0,
      y = 230,
      settings = { [0] = 0, [1] = 6, [2] = 1, [3] = 5, [4] = 4, [5] = 100, [6] = 0, [8] = 1, [9] = 1, [10] = 1 }
    },
    {
      frame = _G.UtilityCooldownViewer,
      name = "Utility Cooldowns",
      p = "BOTTOM",
      rt = "UIParent",
      rp = "BOTTOM",
      x = 0,
      y = 170,
      settings = { [0] = 0, [1] = 12, [2] = 1, [3] = 3, [4] = 4, [5] = 100, [6] = 0, [8] = 1, [9] = 1, [10] = 1 }
    },
    {
      frame = _G.BuffBarCooldownViewer,
      name = "Tracked Bars",
      p = "CENTER",
      rt = "UIParent",
      rp = "CENTER",
      x = -272,
      y = -213,
      settings = { [0] = 1, [1] = 1, [2] = 0, [3] = 4, [4] = 0, [5] = 100, [6] = 1, [7] = 0, [8] = 1, [9] = 1, [10] = 1, [11] = 45 }
    },
    {
      frame = _G.BuffIconCooldownViewer,
      name = "Tracked Buffs",
      p = "TOP",
      rt = "UIParent",
      rp = "TOP",
      x = 0,
      y = -751,
      settings = { [0] = 0, [1] = 1, [2] = 1, [3] = 4, [4] = 4, [5] = 100, [6] = 0, [8] = 1, [9] = 1, [10] = 1 }
    },
    {
      frame = _G.ExternalDefensivesFrame,
      name = "External Defensives",
      p = "CENTER",
      rt = "UIParent",
      rp = "CENTER",
      x = -302,
      y = -357,
      settings = { [0] = 0, [1] = 0, [2] = 0, [3] = 7, [5] = 5, [6] = 5, [8] = 0, [9] = 100 }
    },
  }

  for _, info in ipairs(framesToConfigure) do
    if info.frame then
      -- Apply Position (Using UIParent for all to ensure stability and avoid secure errors)
      LibEditMode:ReanchorFrame(info.frame, info.p, info.rt, info.rp, info.x, info.y)

      -- Apply Settings
      if info.settings then
        for id, value in pairs(info.settings) do
          LibEditMode:SetFrameSetting(info.frame, id, value)
        end
      end
    end
  end

  if E.db[MyPluginName].configureDamageMeters then
    NoobTacoUIElv:ConfigureDamageMeters()
  end

  -- Save and Apply
  LibEditMode:ApplyChanges()
end

-- Manual configuration for Damage Meter Windows (bypassing LibEditMode if it doesn't recognize them)
function NoobTacoUIElv:ConfigureDamageMeters()
  if not NoobTacoUIElv.IsMidnight then return end
  if not E.db[MyPluginName].configureDamageMeters then return end

  local mainFrame = _G.DamageMeterSessionWindow1
  if mainFrame then
    -- Unclamp to allow movement closer to edges
    mainFrame:SetClampedToScreen(false)
    mainFrame:SetClampRectInsets(0, 0, 0, 0)

    -- Apply position manually (User's perfect settings)
    mainFrame:ClearAllPoints()
    mainFrame:SetPoint("TOPLEFT", _G.UIParent, "TOPLEFT", 1690, -865)

    -- Apply size
    mainFrame:SetSize(280, 200)
  end

  -- Position the "second window" (Blizzard window 2 or a common Addon window)
  local secondFrame = _G.DamageMeterSessionWindow2 or _G.DetailsBaseFrame1 or _G.DetailsBaseFrame2
  if secondFrame and mainFrame then
    secondFrame:SetClampedToScreen(false)
    secondFrame:SetClampRectInsets(0, 0, 0, 0)

    -- Anchor exactly to the left of the main window
    secondFrame:ClearAllPoints()
    secondFrame:SetPoint("TOPRIGHT", mainFrame, "TOPLEFT", 30, 0)

    -- Match the size for a uniform look
    secondFrame:SetSize(280, 200)
  end

  -- Hook Edit Mode save to re-apply logic (since Blizzard often resets this)
  if not NoobTacoUIElv.DamageMeterHooked then
    hooksecurefunc(C_EditMode, "SaveLayouts", function()
      NoobTacoUIElv:ConfigureDamageMeters()
    end)

    -- Tie visibility to RightChatPanel
    if _G.RightChatPanel then
      _G.RightChatPanel:HookScript("OnShow", function() NoobTacoUIElv:UpdateDamageMeterVisibility() end)
      _G.RightChatPanel:HookScript("OnHide", function() NoobTacoUIElv:UpdateDamageMeterVisibility() end)
    end

    -- Persistent Data Texts: Reparent to E.UIParent so they stay visible when panels hide
    if _G.LeftChatDataPanel then
      _G.LeftChatDataPanel:SetParent(E.UIParent)
    end
    if _G.RightChatDataPanel then
      _G.RightChatDataPanel:SetParent(E.UIParent)
    end

    NoobTacoUIElv.DamageMeterHooked = true
  end

  -- Initial visibility sync
  NoobTacoUIElv:UpdateDamageMeterVisibility()
end

function NoobTacoUIElv:UpdateDamageMeterVisibility()
  local rcp = _G.RightChatPanel
  if not rcp then return end

  local show = rcp:IsShown()
  local frames = {
    _G.DamageMeterSessionWindow1,
    _G.DamageMeterSessionWindow2,
    _G.DetailsBaseFrame1,
    _G.DetailsBaseFrame2
  }

  for _, frame in ipairs(frames) do
    if frame then
      frame:SetShown(show)
    end
  end
end
