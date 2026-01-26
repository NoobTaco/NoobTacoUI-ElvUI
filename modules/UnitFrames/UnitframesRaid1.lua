local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

-- CHANGELOG --------------------------------------------------------------------
--[[
    Version 1.5.0 - General improvements
        - Updated the font used for general UI to "Poppins-SemiBold"
        - Adjusted the colors for general UI
        - Increased the font size for general UI
]]
function NoobTacoUI:UnitframeRaid1()
    -- Initialize customTexts table if it doesn't exist
    if not E.db["unitframe"]["units"]["raid1"]["customTexts"] then
        E.db["unitframe"]["units"]["raid1"]["customTexts"] = {}
    end
    -- Initialize individual custom text tables
    if not E.db["unitframe"]["units"]["raid1"]["customTexts"]["party-health"] then
        E.db["unitframe"]["units"]["raid1"]["customTexts"]["party-health"] = {}
    end

    if not E.db["unitframe"]["units"]["raid1"]["customTexts"]["party-name"] then
        E.db["unitframe"]["units"]["raid1"]["customTexts"]["party-name"] = {}
    end
    E.db["unitframe"]["units"]["raid1"]["buffIndicator"]["size"] = 15
    E.db["unitframe"]["units"]["raid1"]["buffs"]["perrow"] = 8
    E.db["unitframe"]["units"]["raid1"]["customTexts"]["party-health"]["attachTextTo"] = "Health"
    E.db["unitframe"]["units"]["raid1"]["customTexts"]["party-health"]["enable"] = true
    E.db["unitframe"]["units"]["raid1"]["customTexts"]["party-health"]["font"] = "Poppins-SemiBold"
    E.db["unitframe"]["units"]["raid1"]["customTexts"]["party-health"]["fontOutline"] = "SHADOW"
    E.db["unitframe"]["units"]["raid1"]["customTexts"]["party-health"]["justifyH"] = "CENTER"
    E.db["unitframe"]["units"]["raid1"]["customTexts"]["party-health"]["size"] = 11
    E.db["unitframe"]["units"]["raid1"]["customTexts"]["party-health"]["text_format"] = "[perhp]"
    E.db["unitframe"]["units"]["raid1"]["customTexts"]["party-health"]["xOffset"] = 0
    E.db["unitframe"]["units"]["raid1"]["customTexts"]["party-health"]["yOffset"] = -10
    E.db["unitframe"]["units"]["raid1"]["customTexts"]["party-name"]["attachTextTo"] = "Health"
    E.db["unitframe"]["units"]["raid1"]["customTexts"]["party-name"]["enable"] = true
    E.db["unitframe"]["units"]["raid1"]["customTexts"]["party-name"]["font"] = "Poppins-SemiBold"
    E.db["unitframe"]["units"]["raid1"]["customTexts"]["party-name"]["fontOutline"] = "SHADOW"
    E.db["unitframe"]["units"]["raid1"]["customTexts"]["party-name"]["justifyH"] = "CENTER"
    E.db["unitframe"]["units"]["raid1"]["customTexts"]["party-name"]["size"] = 13
    E.db["unitframe"]["units"]["raid1"]["customTexts"]["party-name"]["text_format"] = "[name:short]"
    E.db["unitframe"]["units"]["raid1"]["customTexts"]["party-name"]["xOffset"] = 0
    E.db["unitframe"]["units"]["raid1"]["customTexts"]["party-name"]["yOffset"] = 4
    E.db["unitframe"]["units"]["raid1"]["debuffs"]["anchorPoint"] = "TOP"
    E.db["unitframe"]["units"]["raid1"]["debuffs"]["clickThrough"] = true
    E.db["unitframe"]["units"]["raid1"]["debuffs"]["countFont"] = "Poppins-SemiBold"
    E.db["unitframe"]["units"]["raid1"]["debuffs"]["enable"] = true
    E.db["unitframe"]["units"]["raid1"]["debuffs"]["numrows"] = 2
    E.db["unitframe"]["units"]["raid1"]["debuffs"]["priority"] = "Blacklist,Dispellable,RaidDebuffs,CCDebuffs"
    E.db["unitframe"]["units"]["raid1"]["debuffs"]["sizeOverride"] = 20
    E.db["unitframe"]["units"]["raid1"]["debuffs"]["yOffset"] = -50
    E.db["unitframe"]["units"]["raid1"]["growthDirection"] = "DOWN_RIGHT"
    E.db["unitframe"]["units"]["raid1"]["healPrediction"]["enable"] = true
    E.db["unitframe"]["units"]["raid1"]["health"]["position"] = "CENTER"
    E.db["unitframe"]["units"]["raid1"]["health"]["text_format"] = ""
    E.db["unitframe"]["units"]["raid1"]["health"]["xOffset"] = 0
    E.db["unitframe"]["units"]["raid1"]["health"]["yOffset"] = -10
    E.db["unitframe"]["units"]["raid1"]["height"] = 60
    E.db["unitframe"]["units"]["raid1"]["horizontalSpacing"] = 2
    E.db["unitframe"]["units"]["raid1"]["infoPanel"]["enable"] = true
    E.db["unitframe"]["units"]["raid1"]["infoPanel"]["height"] = 15
    E.db["unitframe"]["units"]["raid1"]["name"]["attachTextTo"] = "InfoPanel"
    E.db["unitframe"]["units"]["raid1"]["name"]["position"] = "BOTTOMLEFT"
    E.db["unitframe"]["units"]["raid1"]["name"]["text_format"] = ""
    E.db["unitframe"]["units"]["raid1"]["name"]["xOffset"] = 2
    E.db["unitframe"]["units"]["raid1"]["name"]["yOffset"] = 4
    E.db["unitframe"]["units"]["raid1"]["numGroups"] = 8
    E.db["unitframe"]["units"]["raid1"]["power"]["height"] = 8
    E.db["unitframe"]["units"]["raid1"]["power"]["position"] = "RIGHT"
    E.db["unitframe"]["units"]["raid1"]["power"]["yOffset"] = 0
    E.db["unitframe"]["units"]["raid1"]["privateAuras"]["icon"]["size"] = 20
    E.db["unitframe"]["units"]["raid1"]["raidRoleIcons"]["yOffset"] = -2
    E.db["unitframe"]["units"]["raid1"]["rdebuffs"]["font"] = "Poppins-SemiBold"
    E.db["unitframe"]["units"]["raid1"]["rdebuffs"]["size"] = 30
    E.db["unitframe"]["units"]["raid1"]["rdebuffs"]["xOffset"] = 30
    E.db["unitframe"]["units"]["raid1"]["rdebuffs"]["yOffset"] = 25
    E.db["unitframe"]["units"]["raid1"]["readycheckIcon"]["position"] = "CENTER"
    E.db["unitframe"]["units"]["raid1"]["readycheckIcon"]["size"] = 40
    E.db["unitframe"]["units"]["raid1"]["readycheckIcon"]["yOffset"] = 0
    E.db["unitframe"]["units"]["raid1"]["resurrectIcon"]["attachTo"] = "BOTTOMRIGHT"
    E.db["unitframe"]["units"]["raid1"]["resurrectIcon"]["size"] = 40
    E.db["unitframe"]["units"]["raid1"]["roleIcon"]["attachTo"] = "InfoPanel"
    E.db["unitframe"]["units"]["raid1"]["roleIcon"]["size"] = 12
    E.db["unitframe"]["units"]["raid1"]["roleIcon"]["xOffset"] = 0
    E.db["unitframe"]["units"]["raid1"]["roleIcon"]["yOffset"] = 0
    E.db["unitframe"]["units"]["raid1"]["visibility"] = "[@raid6,noexists][@raid26,exists] hide;show"
    E.db["unitframe"]["units"]["raid1"]["width"] = 100
end
