local addonName, Engine = ...
local NoobTacoUIElv = Engine.NoobTacoUIElv
local E, L, V, P, G = Engine.E, Engine.L, Engine.V, Engine.P, Engine.G

-- CHANGELOG --------------------------------------------------------------------
--[[
    Version 1.5.0 - Auras improvements
        - Updated the font used for auras to "Poppins-SemiBold"
        - Adjusted the colors for expiring auras
        - Increased the font size for auras
]]
function NoobTacoUIElv:SetupAuras()
    -- AURAS -------------------------------------------------------------------
    E.db["auras"]["font"] = "Poppins-SemiBold"
    E.db["auras"]["buffs"]["countFont"] = "Poppins-SemiBold"
    E.db["auras"]["buffs"]["timeFont"] = "Poppins-SemiBold"
    E.db["auras"]["buffs"]["timeFontOutline"] = "NONE"
    E.db["auras"]["buffs"]["timeFontSize"] = 12
    E.db["auras"]["buffs"]["countFontSize"] = 14
    E.db["auras"]["buffs"]["durationFontSize"] = 14
    E.db["auras"]["buffs"]["size"] = 30
    E.db["auras"]["debuffs"]["countFont"] = "Poppins-SemiBold"
    E.db["auras"]["debuffs"]["countFontSize"] = 14
    E.db["auras"]["debuffs"]["timeFont"] = "Poppins-SemiBold"
    E.db["auras"]["debuffs"]["timeFontOutline"] = "NONE"
end
