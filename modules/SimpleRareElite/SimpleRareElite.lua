local SimpleRareElite = CreateFrame("Frame", "SimpleRareElite", UIParent)
local WagoAnalytics = LibStub("WagoAnalytics"):Register("9rN49x6D")
local TargetFrame

-- Change this line and use a unique name for your plugin.
local MyPluginName = "|cFF16C3F2NoobTaco|r|cFFFFFFFFUI|r"

-- Create references to ElvUI internals
local E = unpack(ElvUI)

-- Sanity check for fresh profiles
if E.db[MyPluginName] == nil then
    E.db[MyPluginName] = {}
end

-- Set Textures
local function SetSimpleRareElite(Texture)
    SimpleRareElite.Texture:SetTexture("Interface\\AddOns\\NoobTacoUI\\Media\\Textures\\" .. Texture)
    SimpleRareElite.Texture:SetTexCoord(0, 1, 0, 1)
    SimpleRareElite:ClearAllPoints()

    -- Modern
    SimpleRareElite:SetSize(100, 85)
    SimpleRareElite:SetPoint("TOPRIGHT", TargetFrame, "TOPRIGHT", 35, 12)

    SimpleRareElite:Show()
end

-- Load and Show Textures
local function CreateSimpleRareElite()
    -- Check if overlay is enabled
    if E.db[MyPluginName].overlay == false then
        -- Add WagoAnalytics for Elite Overlay
        WagoAnalytics:Switch("Elite Overlay", false)
        print(MyPluginName .. " - overlay disabled")
        return
    end

    SimpleRareElite:RegisterEvent("PLAYER_LOGIN")
    SimpleRareElite:RegisterEvent("ADDON_LOADED")

    SimpleRareElite:SetScript(
        "OnEvent",
        function(self, event)
            self:Hide()

            if event == "PLAYER_LOGIN" then
                TargetFrame = ElvUF_Target

                if not TargetFrame then
                    return
                end

                SimpleRareElite:SetParent(TargetFrame)
                SimpleRareElite.Texture = SimpleRareElite:CreateTexture("ARTWORK")
                SimpleRareElite:SetFrameLevel(12)
                SimpleRareElite.Texture:SetAllPoints()

                self:RegisterEvent("PLAYER_TARGET_CHANGED")
            elseif event == "PLAYER_TARGET_CHANGED" then
                local TargetClass =
                    UnitIsPlayer("target") and select(2, UnitClass("target")) or UnitClassification("target")

                if TargetClass == "worldboss" then
                    SetSimpleRareElite("worldboss_df.tga")
                elseif TargetClass == "elite" then
                    SetSimpleRareElite("elite_df.tga")
                elseif TargetClass == "rare" then
                    SetSimpleRareElite("rare_df.tga")
                elseif TargetClass == "rareelite" then
                    SetSimpleRareElite("rare_df.tga")
                end
            end
        end
    )
end

CreateSimpleRareElite()
