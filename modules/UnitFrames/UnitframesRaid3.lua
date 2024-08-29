local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

-- CHANGELOG --------------------------------------------------------------------
--[[
    Version 1.5.0 - General improvements
        - Updated the font used for general UI to "Poppins-SemiBold"
        - Adjusted the colors for general UI
        - Increased the font size for general UI
]]
function NoobTacoUI:UnitframeRaid3()
    E.db["unitframe"]["units"]["raid3"]["buffIndicator"]["enable"] = true
    E.db["unitframe"]["units"]["raid3"]["buffIndicator"]["size"] = 10
    E.db["unitframe"]["units"]["raid3"]["debuffs"]["anchorPoint"] = "TOP"
    E.db["unitframe"]["units"]["raid3"]["debuffs"]["clickThrough"] = true
    E.db["unitframe"]["units"]["raid3"]["debuffs"]["enable"] = true
    E.db["unitframe"]["units"]["raid3"]["debuffs"]["sizeOverride"] = 20
    E.db["unitframe"]["units"]["raid3"]["debuffs"]["yOffset"] = -30
    E.db["unitframe"]["units"]["raid3"]["enable"] = true
    E.db["unitframe"]["units"]["raid3"]["growthDirection"] = "RIGHT_UP"
    E.db["unitframe"]["units"]["raid3"]["height"] = 32
    E.db["unitframe"]["units"]["raid3"]["rdebuffs"]["enable"] = true
    E.db["unitframe"]["units"]["raid3"]["rdebuffs"]["font"] = "Poppins-SemiBold"
    E.db["unitframe"]["units"]["raid3"]["roleIcon"]["combatHide"] = true
    E.db["unitframe"]["units"]["raid3"]["roleIcon"]["damager"] = false
    E.db["unitframe"]["units"]["raid3"]["roleIcon"]["enable"] = true
    E.db["unitframe"]["units"]["raid3"]["visibility"] = "[@raid26,noexists] hide;show"
    E.db["unitframe"]["units"]["raid3"]["width"] = 100
    E.db["unitframe"]["units"]["raid3"]["width"] = 75
    E.db["unitframe"]["units"]["raid3"]["width"] = 90
end
