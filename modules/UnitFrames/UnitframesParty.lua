local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

-- CHANGELOG --------------------------------------------------------------------
--[[
    Version 1.5.0 - General improvements
        - Updated the font used for general UI to "Poppins-SemiBold"
        - Adjusted the colors for general UI
        - Increased the font size for general UI
]]
function NoobTacoUI:UnitframeParty()
    -- Initialize customTexts table if it doesn't exist
    if not E.db["unitframe"]["units"]["party"]["customTexts"] then
        E.db["unitframe"]["units"]["party"]["customTexts"] = {}
    end
    -- Initialize party-health customText if it doesn't exist
    if not E.db["unitframe"]["units"]["party"]["customTexts"]["party-health"] then
        E.db["unitframe"]["units"]["party"]["customTexts"]["party-health"] = {}
    end
    -- Initialize party-name customText if it doesn't exist
    if not E.db["unitframe"]["units"]["party"]["customTexts"]["party-name"] then
        E.db["unitframe"]["units"]["party"]["customTexts"]["party-name"] = {}
    end

    E.db["unitframe"]["units"]["party"]["buffIndicator"]["size"] = 15
    E.db["unitframe"]["units"]["party"]["customTexts"]["party-health"]["attachTextTo"] = "Health"
    E.db["unitframe"]["units"]["party"]["customTexts"]["party-health"]["enable"] = true
    E.db["unitframe"]["units"]["party"]["customTexts"]["party-health"]["font"] = "Poppins-SemiBold"
    E.db["unitframe"]["units"]["party"]["customTexts"]["party-health"]["fontOutline"] = "SHADOW"
    E.db["unitframe"]["units"]["party"]["customTexts"]["party-health"]["justifyH"] = "CENTER"
    E.db["unitframe"]["units"]["party"]["customTexts"]["party-health"]["size"] = 11
    E.db["unitframe"]["units"]["party"]["customTexts"]["party-health"]["text_format"] = "[perhp]"
    E.db["unitframe"]["units"]["party"]["customTexts"]["party-health"]["xOffset"] = 0
    E.db["unitframe"]["units"]["party"]["customTexts"]["party-health"]["yOffset"] = -10
    E.db["unitframe"]["units"]["party"]["customTexts"]["party-name"]["attachTextTo"] = "Health"
    E.db["unitframe"]["units"]["party"]["customTexts"]["party-name"]["enable"] = true
    E.db["unitframe"]["units"]["party"]["customTexts"]["party-name"]["font"] = "Poppins-SemiBold"
    E.db["unitframe"]["units"]["party"]["customTexts"]["party-name"]["fontOutline"] = "SHADOW"
    E.db["unitframe"]["units"]["party"]["customTexts"]["party-name"]["justifyH"] = "CENTER"
    E.db["unitframe"]["units"]["party"]["customTexts"]["party-name"]["size"] = 13
    E.db["unitframe"]["units"]["party"]["customTexts"]["party-name"]["text_format"] = "[name:short]"
    E.db["unitframe"]["units"]["party"]["customTexts"]["party-name"]["xOffset"] = 0
    E.db["unitframe"]["units"]["party"]["customTexts"]["party-name"]["yOffset"] = 4
    E.db["unitframe"]["units"]["party"]["debuffs"]["anchorPoint"] = "TOP"
    E.db["unitframe"]["units"]["party"]["debuffs"]["clickThrough"] = true
    E.db["unitframe"]["units"]["party"]["debuffs"]["countFont"] = "Poppins-SemiBold"
    E.db["unitframe"]["units"]["party"]["debuffs"]["numrows"] = 2
    E.db["unitframe"]["units"]["party"]["debuffs"]["perrow"] = 3
    E.db["unitframe"]["units"]["party"]["debuffs"]["sizeOverride"] = 20
    E.db["unitframe"]["units"]["party"]["debuffs"]["yOffset"] = -50
    E.db["unitframe"]["units"]["party"]["groupBy"] = "GROUP"
    E.db["unitframe"]["units"]["party"]["growthDirection"] = "DOWN_RIGHT"
    E.db["unitframe"]["units"]["party"]["healPrediction"]["enable"] = true
    E.db["unitframe"]["units"]["party"]["health"]["position"] = "CENTER"
    E.db["unitframe"]["units"]["party"]["health"]["text_format"] = ""
    E.db["unitframe"]["units"]["party"]["health"]["xOffset"] = 0
    E.db["unitframe"]["units"]["party"]["health"]["yOffset"] = -10
    E.db["unitframe"]["units"]["party"]["height"] = 60
    E.db["unitframe"]["units"]["party"]["horizontalSpacing"] = 2
    E.db["unitframe"]["units"]["party"]["name"]["text_format"] = ""
    E.db["unitframe"]["units"]["party"]["name"]["yOffset"] = 4
    E.db["unitframe"]["units"]["party"]["orientation"] = "MIDDLE"
    E.db["unitframe"]["units"]["party"]["power"]["height"] = 8
    E.db["unitframe"]["units"]["party"]["power"]["text_format"] = ""
    E.db["unitframe"]["units"]["party"]["raidRoleIcons"]["yOffset"] = -2
    E.db["unitframe"]["units"]["party"]["rdebuffs"]["font"] = "Poppins-SemiBold"
    E.db["unitframe"]["units"]["party"]["readycheckIcon"]["position"] = "CENTER"
    E.db["unitframe"]["units"]["party"]["readycheckIcon"]["size"] = 40
    E.db["unitframe"]["units"]["party"]["readycheckIcon"]["yOffset"] = 0
    E.db["unitframe"]["units"]["party"]["resurrectIcon"]["size"] = 40
    E.db["unitframe"]["units"]["party"]["roleIcon"]["xOffset"] = 0
    E.db["unitframe"]["units"]["party"]["roleIcon"]["yOffset"] = 0
    E.db["unitframe"]["units"]["party"]["visibility"] = "[@raid6,exists][nogroup] hide;show"
    E.db["unitframe"]["units"]["party"]["width"] = 100
end

E.db["unitframe"]["units"]["party"]["width"] = 100
