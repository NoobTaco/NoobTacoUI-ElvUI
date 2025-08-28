local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

-- CHANGELOG --------------------------------------------------------------------
--[[
    Version 1.5.0 - Auras improvements
        - Updated the font used for auras to "Poppins-SemiBold"
        - Adjusted the colors for expiring auras
        - Increased the font size for auras
]]
function NoobTacoUI:SetupAuras()
    -- AURAS -------------------------------------------------------------------
    E.db["auras"]["font"] = "Poppins-SemiBold"
    E.db["auras"]["cooldown"]["expiringColor"]["b"] = 0.41176470588235
    E.db["auras"]["cooldown"]["expiringColor"]["g"] = 0.38039215686275
    E.db["auras"]["cooldown"]["expiringColor"]["r"] = 0.74901960784314
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
