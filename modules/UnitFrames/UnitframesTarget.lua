local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

-- CHANGELOG --------------------------------------------------------------------
--[[
    Version 1.5.0 - General improvements
        - Updated the font used for general UI to "Poppins-SemiBold"
        - Adjusted the colors for general UI
        - Increased the font size for general UI
]]
function NoobTacoUI:UnitframeTarget()
    if not E.db.unitframe.units.target.customTexts then
        E.db.unitframe.units.target.customTexts = {}
    end
    if not E.db.unitframe.units.target.customTexts.PlayerName then
        E.db.unitframe.units.target.customTexts.PlayerName = {}
    end

    E.db["unitframe"]["units"]["target"]["width"] = 175
    E.db["unitframe"]["units"]["target"]["height"] = 52

    E.db["unitframe"]["units"]["target"]["buffs"]["isAuraDefensive"] = true
    E.db["unitframe"]["units"]["target"]["buffs"]["isAuraPlayer"] = false
    E.db["unitframe"]["units"]["target"]["buffs"]["isAuraRaid"] = false
    E.db["unitframe"]["units"]["target"]["buffs"]["priority"] =
    "Blacklist,Whitelist,blockNoDuration,Personal,NonPersonal"
    E.db["unitframe"]["units"]["target"]["buffs"]["sizeOverride"] = 30
    E.db["unitframe"]["units"]["target"]["buffs"]["yOffset"] = 20

    E.db["unitframe"]["units"]["target"]["debuffs"]["anchorPoint"] = "BOTTOMRIGHT"
    E.db["unitframe"]["units"]["target"]["debuffs"]["desaturate"] = false
    E.db["unitframe"]["units"]["target"]["debuffs"]["isAuraPlayer"] = false
    E.db["unitframe"]["units"]["target"]["debuffs"]["maxDuration"] = 0
    E.db["unitframe"]["units"]["target"]["debuffs"]["perrow"] = 6
    E.db["unitframe"]["units"]["target"]["debuffs"]["priority"] = "Blacklist,Personal,NonPersonal"
    E.db["unitframe"]["units"]["target"]["debuffs"]["sizeOverride"] = 25

    E.db["unitframe"]["units"]["target"]["castbar"]["customTextFont"]["enable"] = true
    E.db["unitframe"]["units"]["target"]["castbar"]["customTextFont"]["font"] = "Poppins-Medium"
    E.db["unitframe"]["units"]["target"]["castbar"]["customTextFont"]["fontStyle"] = "SHADOW"
    E.db["unitframe"]["units"]["target"]["castbar"]["height"] = 25
    E.db["unitframe"]["units"]["target"]["castbar"]["iconSize"] = 25
    E.db["unitframe"]["units"]["target"]["castbar"]["insideInfoPanel"] = false
    E.db["unitframe"]["units"]["target"]["castbar"]["textColor"]["b"] = 0.95686280727386
    E.db["unitframe"]["units"]["target"]["castbar"]["textColor"]["g"] = 0.93725496530533
    E.db["unitframe"]["units"]["target"]["castbar"]["textColor"]["r"] = 0.92549026012421
    E.db["unitframe"]["units"]["target"]["castbar"]["width"] = 175

    E.db["unitframe"]["units"]["target"]["customTexts"]["PlayerName"]["attachTextTo"] = "Frame"
    E.db["unitframe"]["units"]["target"]["customTexts"]["PlayerName"]["enable"] = true
    E.db["unitframe"]["units"]["target"]["customTexts"]["PlayerName"]["font"] = "Poppins-SemiBold"
    E.db["unitframe"]["units"]["target"]["customTexts"]["PlayerName"]["fontOutline"] = "SHADOW"
    E.db["unitframe"]["units"]["target"]["customTexts"]["PlayerName"]["justifyH"] = "RIGHT"
    E.db["unitframe"]["units"]["target"]["customTexts"]["PlayerName"]["size"] = 16
    E.db["unitframe"]["units"]["target"]["customTexts"]["PlayerName"]["text_format"] =
    "[shortclassification] [name:medium]  [difficultycolor] [level]"
    E.db["unitframe"]["units"]["target"]["customTexts"]["PlayerName"]["xOffset"] = -5
    E.db["unitframe"]["units"]["target"]["customTexts"]["PlayerName"]["yOffset"] = -10

    E.db["unitframe"]["units"]["target"]["health"]["attachTextTo"] = "InfoPanel"
    E.db["unitframe"]["units"]["target"]["health"]["text_format"] = ""

    E.db["unitframe"]["units"]["target"]["name"]["attachTextTo"] = "Frame"
    E.db["unitframe"]["units"]["target"]["name"]["position"] = "BOTTOM"
    E.db["unitframe"]["units"]["target"]["name"]["text_format"] = ""
    E.db["unitframe"]["units"]["target"]["name"]["xOffset"] = 5

    E.db["unitframe"]["units"]["target"]["portrait"]["camDistanceScale"] = 1.04
    E.db["unitframe"]["units"]["target"]["portrait"]["enable"] = true
    E.db["unitframe"]["units"]["target"]["portrait"]["width"] = 55

    E.db["unitframe"]["units"]["target"]["power"]["attachTextTo"] = "Power"
    E.db["unitframe"]["units"]["target"]["power"]["height"] = 10
    E.db["unitframe"]["units"]["target"]["power"]["position"] = "RIGHT"
    E.db["unitframe"]["units"]["target"]["power"]["text_format"] = ""
    E.db["unitframe"]["units"]["target"]["power"]["xOffset"] = -208

    E.db["unitframe"]["units"]["target"]["pvpIcon"]["anchorPoint"] = "TOPLEFT"
    E.db["unitframe"]["units"]["target"]["pvpIcon"]["enable"] = true
    E.db["unitframe"]["units"]["target"]["pvpIcon"]["scale"] = 1.5
    E.db["unitframe"]["units"]["target"]["pvpIcon"]["xOffset"] = -75
    E.db["unitframe"]["units"]["target"]["pvpIcon"]["yOffset"] = 27

    E.db["unitframe"]["units"]["target"]["CombatIcon"]["anchorPoint"] = "BOTTOMLEFT"
    E.db["unitframe"]["units"]["target"]["CombatIcon"]["size"] = 60
    E.db["unitframe"]["units"]["target"]["CombatIcon"]["xOffset"] = -55
    E.db["unitframe"]["units"]["target"]["CombatIcon"]["yOffset"] = -20

    E.db["unitframe"]["units"]["target"]["aurabar"]["enable"] = false
    E.db["unitframe"]["units"]["target"]["disableMouseoverGlow"] = true
    E.db["unitframe"]["units"]["target"]["orientation"] = "LEFT"
end
