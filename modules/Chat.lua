local addonName, Engine = ...
local NoobTacoUIElv = Engine.NoobTacoUIElv
local E, L, V, P, G = Engine.E, Engine.L, Engine.V, Engine.P, Engine.G

-- CHANGELOG --------------------------------------------------------------------
--[[
    Version 1.5.0 - Chat improvements
        - Updated the font used for chat to "Poppins-SemiBold"
        - Adjusted the colors for chat panels
        - Increased the font size for chat
]]
function NoobTacoUIElv:SetupChat()
    E.db["chat"]["useCustomTimeColor"] = false
    E.db["chat"]["fontSize"] = 14
    E.db["chat"]["keywordSound"] = "Simon Chime"
    E.db["chat"]["tabFont"] = "Poppins-SemiBold"
    E.db["chat"]["panelColor"]["a"] = 0.53608983755112
    E.db["chat"]["panelColor"]["r"] = 0.13725490196078
    E.db["chat"]["panelColor"]["g"] = 0.15294117647059
    E.db["chat"]["panelColor"]["b"] = 0.18823529411765
    E.db["chat"]["tabFontSize"] = 14
    E.db["chat"]["font"] = "Poppins-SemiBold"
    E.db["chat"]["panelHeight"] = 200
    E.db["chat"]["editBoxPosition"] = "ABOVE_CHAT"
    E.db["chat"]["tabSelectorColor"]["r"] = 0.53333333333333
    E.db["chat"]["tabSelectorColor"]["g"] = 0.75294117647059
    E.db["chat"]["tabSelectorColor"]["b"] = 0.8156862745098
    E.db["chat"]["tabSelector"] = "BOX1"

    -- Chat Panel Width
    E.db["chat"]["panelWidth"] = 500
end

function NoobTacoUIElv:SkinDamageMeters()
    -- Consolidate chat channels
    E.db.chat.separateLootTab = false
    E.db.chat.panelBackdrop = 'LEFT'
    E.db.chat.copyChatLines = true

    -- Prepare damage meter settings
    if NoobTacoUIElv.IsMidnight then
        E.db[NoobTacoUIElv.MyPluginName].configureDamageMeters = true
        NoobTacoUIElv:ConfigureDamageMeters()
    end

    -- Trigger chat update
    local CH = E:GetModule('Chat')
    CH:PositionChats()

    -- Remove redundant 'Loot' tab if it exists
    local lootName = _G.LOOT
    local tradeName = _G.TRADE
    local combinedName = lootName .. " / " .. tradeName

    for _, frameName in ipairs(_G.CHAT_FRAMES) do
        local frame = _G[frameName]
        if frame then
            local name = _G.FCF_GetChatWindowInfo(frame:GetID())
            if name == lootName or name == combinedName then
                _G.FCF_Close(frame)
            end
        end
    end

    -- Add channels to General (ChatFrame1)
    local chatGroup = { 'COMBAT_XP_GAIN', 'COMBAT_HONOR_GAIN', 'COMBAT_FACTION_CHANGE', 'SKILL', 'LOOT', 'CURRENCY',
        'MONEY', 'TRADESKILLS' }
    for _, v in ipairs(chatGroup) do
        _G.ChatFrame_AddMessageGroup(_G.ChatFrame1, v)
    end

    NoobTacoUIElv:SetupChat()

    -- Show message
    PluginInstallStepComplete.message = "Meters Skinned & Chat Unified"
    PluginInstallStepComplete:Show()
end
