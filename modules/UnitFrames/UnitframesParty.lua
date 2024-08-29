local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

-- CHANGELOG --------------------------------------------------------------------
--[[
    Version 1.5.0 - General improvements
        - Updated the font used for general UI to "Poppins-SemiBold"
        - Adjusted the colors for general UI
        - Increased the font size for general UI
]]
function NoobTacoUI:UnitframeParty()
    E.db["unitframe"]["units"]["party"]["buffIndicator"]["enable"] = true
    E.db["unitframe"]["units"]["party"]["buffIndicator"]["size"] = 15
    E.db["unitframe"]["units"]["party"]["debuffs"]["anchorPoint"] = "TOP"
    E.db["unitframe"]["units"]["party"]["debuffs"]["clickThrough"] = true
    E.db["unitframe"]["units"]["party"]["debuffs"]["countFont"] = "Poppins-SemiBold"
    E.db["unitframe"]["units"]["party"]["debuffs"]["numrows"] = 2
    E.db["unitframe"]["units"]["party"]["debuffs"]["perrow"] = 3
    E.db["unitframe"]["units"]["party"]["debuffs"]["sizeOverride"] = 20
    E.db["unitframe"]["units"]["party"]["debuffs"]["yOffset"] = -50
    E.db["unitframe"]["units"]["party"]["healPrediction"]["enable"] = true
    E.db["unitframe"]["units"]["party"]["health"]["position"] = "CENTER"
    E.db["unitframe"]["units"]["party"]["health"]["text_format"] = "[health:current-percent]"
    E.db["unitframe"]["units"]["party"]["health"]["xOffset"] = 0
    E.db["unitframe"]["units"]["party"]["health"]["yOffset"] = -10
    E.db["unitframe"]["units"]["party"]["height"] = 60
    E.db["unitframe"]["units"]["party"]["horizontalSpacing"] = 2
    E.db["unitframe"]["units"]["party"]["name"]["text_format"] = "[name:medium] [difficultycolor][smartlevel]"
    E.db["unitframe"]["units"]["party"]["name"]["yOffset"] = 4
    E.db["unitframe"]["units"]["party"]["orientation"] = "MIDDLE"
    E.db["unitframe"]["units"]["party"]["power"]["height"] = 10
    E.db["unitframe"]["units"]["party"]["power"]["text_format"] = ""
    E.db["unitframe"]["units"]["party"]["raidRoleIcons"]["yOffset"] = -2
    E.db["unitframe"]["units"]["party"]["rdebuffs"]["font"] = "Poppins-SemiBold"
    E.db["unitframe"]["units"]["party"]["readycheckIcon"]["position"] = "TOPRIGHT"
    E.db["unitframe"]["units"]["party"]["readycheckIcon"]["size"] = 30
    E.db["unitframe"]["units"]["party"]["readycheckIcon"]["yOffset"] = 0
    E.db["unitframe"]["units"]["party"]["resurrectIcon"]["size"] = 40
    E.db["unitframe"]["units"]["party"]["roleIcon"]["damager"] = false
    E.db["unitframe"]["units"]["party"]["roleIcon"]["size"] = 20
    E.db["unitframe"]["units"]["party"]["visibility"] = "[@raid6,exists][nogroup] hide;show"
    E.db["unitframe"]["units"]["party"]["width"] = 100
end
