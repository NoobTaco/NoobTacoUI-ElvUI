local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

function NoobTacoUI:UnitframeRaid3()
    E.db["unitframe"]["units"]["raid40"]["buffIndicator"]["enable"] = true
    E.db["unitframe"]["units"]["raid40"]["buffIndicator"]["size"] = 10
    E.db["unitframe"]["units"]["raid40"]["debuffs"]["anchorPoint"] = "TOP"
    E.db["unitframe"]["units"]["raid40"]["debuffs"]["clickThrough"] = true
    E.db["unitframe"]["units"]["raid40"]["debuffs"]["enable"] = true
    E.db["unitframe"]["units"]["raid40"]["debuffs"]["sizeOverride"] = 20
    E.db["unitframe"]["units"]["raid40"]["debuffs"]["yOffset"] = -30
    E.db["unitframe"]["units"]["raid40"]["enable"] = true
    E.db["unitframe"]["units"]["raid40"]["growthDirection"] = "RIGHT_UP"
    E.db["unitframe"]["units"]["raid40"]["height"] = 32
    E.db["unitframe"]["units"]["raid40"]["rdebuffs"]["enable"] = true
    E.db["unitframe"]["units"]["raid40"]["rdebuffs"]["font"] = "Exo2-Bold"
    E.db["unitframe"]["units"]["raid40"]["roleIcon"]["combatHide"] = true
    E.db["unitframe"]["units"]["raid40"]["roleIcon"]["damager"] = false
    E.db["unitframe"]["units"]["raid40"]["roleIcon"]["enable"] = true
    E.db["unitframe"]["units"]["raid40"]["visibility"] = "[@raid26,noexists] hide;show"
    E.db["unitframe"]["units"]["raid40"]["width"] = 100
    E.db["unitframe"]["units"]["raid40"]["width"] = 75
    E.db["unitframe"]["units"]["raid40"]["width"] = 90
end
