local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

function NoobTacoUI:SetupAuras()
    -- AURAS -------------------------------------------------------------------
    E.db["auras"]["font"] = "Exo2-Bold"
    E.db["auras"]["cooldown"]["expiringColor"]["b"] = 0.41176470588235
    E.db["auras"]["cooldown"]["expiringColor"]["g"] = 0.38039215686275
    E.db["auras"]["cooldown"]["expiringColor"]["r"] = 0.74901960784314
    E.db["auras"]["buffs"]["countFont"] = "Exo2-Bold"
    E.db["auras"]["buffs"]["timeFont"] = "Exo2-Bold"
    E.db["auras"]["buffs"]["timeFontOutline"] = "NONE"
    E.db["auras"]["buffs"]["timeFontSize"] = 12
    E.db["auras"]["buffs"]["countFontSize"] = 14
    E.db["auras"]["buffs"]["durationFontSize"] = 14
    E.db["auras"]["debuffs"]["countFont"] = "Exo2-Bold"
    E.db["auras"]["debuffs"]["countFontSize"] = 14
    E.db["auras"]["debuffs"]["timeFont"] = "Exo2-Bold"
    E.db["auras"]["debuffs"]["timeFontOutline"] = "NONE"
end
