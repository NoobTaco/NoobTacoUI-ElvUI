local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

-- CHANGELOG --------------------------------------------------------------------
--[[
    Version 1.5.0 - General improvements
        - Updated the font used for general UI to "Poppins-SemiBold"
        - Adjusted the colors for general UI
        - Increased the font size for general UI
]]
function NoobTacoUI:UnitframePlayer()
    E.db["unitframe"]["units"]["player"]["debuffs"]["anchorPoint"] = "TOPRIGHT"
    E.db["unitframe"]["units"]["player"]["debuffs"]["growthX"] = "LEFT"
    E.db["unitframe"]["units"]["player"]["debuffs"]["sizeOverride"] = 40
    E.db["unitframe"]["units"]["player"]["debuffs"]["perrow"] = 6
    E.db["unitframe"]["units"]["player"]["debuffs"]["desaturate"] = false
    E.db["unitframe"]["units"]["player"]["debuffs"]["yOffset"] = 5
    E.db["unitframe"]["units"]["player"]["debuffs"]["attachTo"] = "BUFFS"

    E.db["unitframe"]["units"]["player"]["portrait"]["enable"] = true
    E.db["unitframe"]["units"]["player"]["portrait"]["camDistanceScale"] = 1.04
    E.db["unitframe"]["units"]["player"]["portrait"]["width"] = 55
    E.db["unitframe"]["units"]["player"]["portrait"]["overlay"] = false
    E.db["unitframe"]["units"]["player"]["portrait"]["desaturation"] = 0
    E.db["unitframe"]["units"]["player"]["health"]["xOffset"] = -2
    E.db["unitframe"]["units"]["player"]["health"]["text_format"] = ""
    E.db["unitframe"]["units"]["player"]["health"]["position"] = "RIGHT"
    E.db["unitframe"]["units"]["player"]["CombatIcon"]["anchorPoint"] = "BOTTOMLEFT"
    E.db["unitframe"]["units"]["player"]["CombatIcon"]["size"] = 60
    E.db["unitframe"]["units"]["player"]["CombatIcon"]["xOffset"] = -55
    E.db["unitframe"]["units"]["player"]["CombatIcon"]["yOffset"] = -20
    E.db["unitframe"]["units"]["player"]["classbar"]["autoHide"] = false
    E.db["unitframe"]["units"]["player"]["classbar"]["detachFromFrame"] = false
    E.db["unitframe"]["units"]["player"]["RestIcon"]["size"] = 28
    E.db["unitframe"]["units"]["player"]["RestIcon"]["texture"] = "Resting0"
    E.db["unitframe"]["units"]["player"]["RestIcon"]["xOffset"] = 4
    E.db["unitframe"]["units"]["player"]["RestIcon"]["yOffset"] = 2
    E.db["unitframe"]["units"]["player"]["power"]["attachTextTo"] = "Power"
    E.db["unitframe"]["units"]["player"]["power"]["height"] = 20
    E.db["unitframe"]["units"]["player"]["power"]["text_format"] = ""
    E.db["unitframe"]["units"]["player"]["power"]["xOffset"] = -208
    E.db["unitframe"]["units"]["player"]["power"]["EnergyManaRegen"] = true
    E.db["unitframe"]["units"]["player"]["power"]["detachFromFrame"] = false
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerName"]["attachTextTo"] = "Frame"
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerName"]["xOffset"] = 5
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerName"]["text_format"] =
        "[name:medium] [difficultycolor] [level] [shortclassification]"
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerName"]["yOffset"] = 40
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerName"]["font"] = "Poppins-SemiBold"
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerName"]["justifyH"] = "RIGHT"
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerName"]["fontOutline"] = "NONE"
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerName"]["enable"] = true
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerName"]["size"] = 13
    -- Updated 8-19-24
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerHealth"]["attachTextTo"] = "Health"
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerHealth"]["enable"] = true
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerHealth"]["font"] = "Poppins-SemiBold"
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerHealth"]["fontOutline"] = "SHADOW"
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerHealth"]["justifyH"] = "RIGHT"
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerHealth"]["size"] = 15
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerHealth"]["text_format"] =
        "[health:current-percent:shortvalue]"
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerHealth"]["xOffset"] = -5
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerHealth"]["yOffset"] = -5
    --
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerPower"]["attachTextTo"] = "Power"
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerPower"]["xOffset"] = -5
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerPower"]["text_format"] = "[power:current-percent:shortvalue]"
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerPower"]["yOffset"] = 0
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerPower"]["font"] = "Poppins-SemiBold"
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerPower"]["justifyH"] = "RIGHT"
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerPower"]["fontOutline"] = "NONE"
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerPower"]["enable"] = true
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerPower"]["size"] = 13
    E.db["unitframe"]["units"]["player"]["width"] = 200

    E.db["unitframe"]["units"]["player"]["castbar"]["height"] = 35
    E.db["unitframe"]["units"]["player"]["castbar"]["width"] = 400
    E.db["unitframe"]["units"]["player"]["name"]["attachTextTo"] = "Frame"
    E.db["unitframe"]["units"]["player"]["name"]["xOffset"] = 5
    E.db["unitframe"]["units"]["player"]["name"]["position"] = "BOTTOM"
    E.db["unitframe"]["units"]["player"]["name"]["text_format"] = ""
    E.db["unitframe"]["units"]["player"]["height"] = 60
    E.db["unitframe"]["units"]["player"]["buffs"]["attachTo"] = "FRAME"
    E.db["unitframe"]["units"]["player"]["buffs"]["anchorPoint"] = "TOPRIGHT"
    E.db["unitframe"]["units"]["player"]["buffs"]["growthX"] = "LEFT"
    E.db["unitframe"]["units"]["player"]["buffs"]["yOffset"] = 20
    E.db["unitframe"]["units"]["player"]["buffs"]["sizeOverride"] = 30
    E.db["unitframe"]["units"]["player"]["pvpIcon"]["anchorPoint"] = "TOPLEFT"
    E.db["unitframe"]["units"]["player"]["pvpIcon"]["enable"] = true
    E.db["unitframe"]["units"]["player"]["pvpIcon"]["scale"] = 1.5
    E.db["unitframe"]["units"]["player"]["pvpIcon"]["xOffset"] = -75
    E.db["unitframe"]["units"]["player"]["pvpIcon"]["yOffset"] = 27
end
