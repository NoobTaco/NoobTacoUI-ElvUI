local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

-- CHANGELOG --------------------------------------------------------------------
--[[
    Version 1.6.0 - Unit frame updates
        - Updated unit frame dimensions and spacing
        - Configured custom health/power icons and offsets
        - Improved aura positioning (debuffs now BOTTOMLEFT with RIGHT growth)
        - Added enhanced custom text formats including player level
        - Updated power bar anchoring and display settings
    Version 1.5.0 - General improvements
        - Updated the font used for general UI to "Poppins-SemiBold"
        - Adjusted the colors for general UI
        - Increased the font size for general UI
]]
function NoobTacoUI:UnitframeTarget()
    if not E.db.unitframe.units.target.customTexts then
        E.db.unitframe.units.target.customTexts = {}
    end
    if not E.db.unitframe.units.target.customTexts.PlayerLevel then
        E.db.unitframe.units.target.customTexts.PlayerLevel = {}
    end
    if not E.db.unitframe.units.target.customTexts.PlayerName then
        E.db.unitframe.units.target.customTexts.PlayerName = {}
    end

    E.db["unitframe"]["units"]["target"]["width"] = 175
    E.db["unitframe"]["units"]["target"]["height"] = 52

    E.db["unitframe"]["units"]["target"]["auras"]["anchorPoint"] = "TOPLEFT"
    E.db["unitframe"]["units"]["target"]["auras"]["enable"] = false
    E.db["unitframe"]["units"]["target"]["auras"]["filter"] = "HELPFUL"
    E.db["unitframe"]["units"]["target"]["auras"]["isAuraDefensive"] = false
    E.db["unitframe"]["units"]["target"]["auras"]["perrow"] = 8
    E.db["unitframe"]["units"]["target"]["auras"]["priority"] = ""
    E.db["unitframe"]["units"]["target"]["auras"]["sizeOverride"] = 0
    E.db["unitframe"]["units"]["target"]["auras"]["xOffset"] = 0

    E.db["unitframe"]["units"]["target"]["buffs"]["anchorPoint"] = "TOPLEFT"
    E.db["unitframe"]["units"]["target"]["buffs"]["growthX"] = "RIGHT"
    E.db["unitframe"]["units"]["target"]["buffs"]["isAuraDefensive"] = true
    E.db["unitframe"]["units"]["target"]["buffs"]["isAuraPlayer"] = false
    E.db["unitframe"]["units"]["target"]["buffs"]["isAuraRaid"] = false
    E.db["unitframe"]["units"]["target"]["buffs"]["priority"] =
    "Blacklist,Whitelist,blockNoDuration,Personal,NonPersonal"
    E.db["unitframe"]["units"]["target"]["buffs"]["sizeOverride"] = 30
    E.db["unitframe"]["units"]["target"]["buffs"]["yOffset"] = 20

    E.db["unitframe"]["units"]["target"]["debuffs"]["anchorPoint"] = "BOTTOMLEFT"
    E.db["unitframe"]["units"]["target"]["debuffs"]["desaturate"] = false
    E.db["unitframe"]["units"]["target"]["debuffs"]["growthX"] = "RIGHT"
    E.db["unitframe"]["units"]["target"]["debuffs"]["isAuraPlayer"] = false
    E.db["unitframe"]["units"]["target"]["debuffs"]["maxDuration"] = 0
    E.db["unitframe"]["units"]["target"]["debuffs"]["perrow"] = 6
    E.db["unitframe"]["units"]["target"]["debuffs"]["priority"] = "Blacklist,Personal,NonPersonal"
    E.db["unitframe"]["units"]["target"]["debuffs"]["sizeOverride"] = 25
    E.db["unitframe"]["units"]["target"]["debuffs"]["yOffset"] = 5

    E.db["unitframe"]["units"]["target"]["castbar"]["customTextFont"]["enable"] = true
    E.db["unitframe"]["units"]["target"]["castbar"]["customTextFont"]["font"] = "Poppins-Medium"
    E.db["unitframe"]["units"]["target"]["castbar"]["customTextFont"]["fontSize"] = 14
    E.db["unitframe"]["units"]["target"]["castbar"]["customTextFont"]["fontStyle"] = "SHADOW"
    E.db["unitframe"]["units"]["target"]["castbar"]["height"] = 25
    E.db["unitframe"]["units"]["target"]["castbar"]["iconSize"] = 25
    E.db["unitframe"]["units"]["target"]["castbar"]["insideInfoPanel"] = false
    E.db["unitframe"]["units"]["target"]["castbar"]["textColor"]["b"] = 0.95686280727386
    E.db["unitframe"]["units"]["target"]["castbar"]["textColor"]["g"] = 0.93725496530533
    E.db["unitframe"]["units"]["target"]["castbar"]["textColor"]["r"] = 0.92549026012421
    E.db["unitframe"]["units"]["target"]["castbar"]["width"] = 175

    E.db["unitframe"]["units"]["target"]["customTexts"]["PlayerLevel"]["attachTextTo"] = "Health"
    E.db["unitframe"]["units"]["target"]["customTexts"]["PlayerLevel"]["enable"] = true
    E.db["unitframe"]["units"]["target"]["customTexts"]["PlayerLevel"]["font"] = "Poppins-SemiBold"
    E.db["unitframe"]["units"]["target"]["customTexts"]["PlayerLevel"]["fontOutline"] = "SHADOW"
    E.db["unitframe"]["units"]["target"]["customTexts"]["PlayerLevel"]["justifyH"] = "LEFT"
    E.db["unitframe"]["units"]["target"]["customTexts"]["PlayerLevel"]["size"] = 20
    E.db["unitframe"]["units"]["target"]["customTexts"]["PlayerLevel"]["text_format"] = " [difficultycolor][smartlevel]"
    E.db["unitframe"]["units"]["target"]["customTexts"]["PlayerLevel"]["xOffset"] = -2
    E.db["unitframe"]["units"]["target"]["customTexts"]["PlayerLevel"]["yOffset"] = 5

    E.db["unitframe"]["units"]["target"]["customTexts"]["PlayerName"]["attachTextTo"] = "Frame"
    E.db["unitframe"]["units"]["target"]["customTexts"]["PlayerName"]["enable"] = true
    E.db["unitframe"]["units"]["target"]["customTexts"]["PlayerName"]["font"] = "Poppins-SemiBold"
    E.db["unitframe"]["units"]["target"]["customTexts"]["PlayerName"]["fontOutline"] = "SHADOW"
    E.db["unitframe"]["units"]["target"]["customTexts"]["PlayerName"]["justifyH"] = "RIGHT"
    E.db["unitframe"]["units"]["target"]["customTexts"]["PlayerName"]["size"] = 16
    E.db["unitframe"]["units"]["target"]["customTexts"]["PlayerName"]["text_format"] =
    "[shortclassification] [name:medium]"
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
    E.db["unitframe"]["units"]["target"]["power"]["detachedWidth"] = 301
    E.db["unitframe"]["units"]["target"]["power"]["hideonnpc"] = true
    E.db["unitframe"]["units"]["target"]["power"]["parent"] = "UIPARENT"
    E.db["unitframe"]["units"]["target"]["power"]["position"] = "RIGHT"
    E.db["unitframe"]["units"]["target"]["power"]["text_format"] = ""
    E.db["unitframe"]["units"]["target"]["power"]["xOffset"] = -208

    E.db["unitframe"]["units"]["target"]["pvpIcon"]["anchorPoint"] = "TOPRIGHT"
    E.db["unitframe"]["units"]["target"]["pvpIcon"]["enable"] = true
    E.db["unitframe"]["units"]["target"]["pvpIcon"]["xOffset"] = 12
    E.db["unitframe"]["units"]["target"]["pvpIcon"]["yOffset"] = 12

    E.db["unitframe"]["units"]["target"]["CombatIcon"]["anchorPoint"] = "BOTTOMLEFT"
    E.db["unitframe"]["units"]["target"]["CombatIcon"]["enable"] = false
    E.db["unitframe"]["units"]["target"]["CombatIcon"]["size"] = 25
    E.db["unitframe"]["units"]["target"]["CombatIcon"]["xOffset"] = -55
    E.db["unitframe"]["units"]["target"]["CombatIcon"]["yOffset"] = -20

    E.db["unitframe"]["units"]["target"]["aurabar"]["enable"] = false
    E.db["unitframe"]["units"]["target"]["disableMouseoverGlow"] = true
end
