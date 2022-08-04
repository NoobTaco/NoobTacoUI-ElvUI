local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

function NoobTacoUI:SetupLayout()
    -- CUSTOM TEXTS
    -- Player Unit Frame
    if not E.db.unitframe.units.player.customTexts then
        E.db.unitframe.units.player.customTexts = {}
    end
    if E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerHealth"] == nil then
        E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerHealth"] = {}
    end
    if E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerName"] == nil then
        E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerName"] = {}
    end
    if E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerPower"] == nil then
        E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerPower"] = {}
    end

    -- Focus Unit Frame
    if not E.db.unitframe.units.focus.customTexts then
        E.db.unitframe.units.focus.customTexts = {}
    end
    if E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetHealth"] == nil then
        E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetHealth"] = {}
    end
    if E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetLevel"] == nil then
        E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetLevel"] = {}
    end
    if E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetName"] == nil then
        E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetName"] = {}
    end
    if E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetPower"] == nil then
        E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetPower"] = {}
    end

    -- -- Pet Unit Frame
    if not E.db.unitframe.units.pet.customTexts then
        E.db.unitframe.units.pet.customTexts = {}
    end
    if E.db["unitframe"]["units"]["pet"]["customTexts"]["Pet Health"] == nil then
        E.db["unitframe"]["units"]["pet"]["customTexts"]["Pet Health"] = {}
    end

    -- -- Fix Movers ??
    if E.db["movers"] == nil then
        E.db["movers"] = {}
    end

    -- Target Unit Frame
    if not E.db.unitframe.units.target.customTexts then
        E.db.unitframe.units.target.customTexts = {}
    end
    if E.db["unitframe"]["units"]["target"]["customTexts"]["TargetHealth"] == nil then
        E.db["unitframe"]["units"]["target"]["customTexts"]["TargetHealth"] = {}
    end
    if E.db["unitframe"]["units"]["target"]["customTexts"]["TargetPower"] == nil then
        E.db["unitframe"]["units"]["target"]["customTexts"]["TargetPower"] = {}
    end
    if E.db["unitframe"]["units"]["target"]["customTexts"]["TargetName"] == nil then
        E.db["unitframe"]["units"]["target"]["customTexts"]["TargetName"] = {}
    end
    if E.db["unitframe"]["units"]["target"]["customTexts"]["TargetLevel"] == nil then
        E.db["unitframe"]["units"]["target"]["customTexts"]["TargetLevel"] = {}
    end

    -- Target of Target Unit Frame
    if not E.db.unitframe.units.targettarget.customTexts then
        E.db.unitframe.units.targettarget.customTexts = {}
    end
    if E.db["unitframe"]["units"]["targettarget"]["customTexts"]["TargetTargetName"] == nil then
        E.db["unitframe"]["units"]["targettarget"]["customTexts"]["TargetTargetName"] = {}
    end

    -- Extra Options not Exported by base profile
    E.db["unitframe"]["units"]["player"]["infoPanel"]["enable"] = false
    E.db["unitframe"]["units"]["target"]["infoPanel"]["enable"] = false
    E.db["unitframe"]["units"]["target"]["orientation"] = "RIGHT"

    -- UNITFRAME ----------------------------------------------------------------
    E.db["unitframe"]["fontSize"] = 13
    E.db["unitframe"]["units"]["player"]["debuffs"]["anchorPoint"] = "TOPRIGHT"
    E.db["unitframe"]["units"]["player"]["debuffs"]["growthX"] = "LEFT"
    E.db["unitframe"]["units"]["player"]["debuffs"]["sizeOverride"] = 40
    E.db["unitframe"]["units"]["player"]["debuffs"]["perrow"] = 6
    E.db["unitframe"]["units"]["player"]["debuffs"]["desaturate"] = false
    E.db["unitframe"]["units"]["player"]["debuffs"]["yOffset"] = 20
    E.db["unitframe"]["units"]["player"]["portrait"]["enable"] = true
    E.db["unitframe"]["units"]["player"]["portrait"]["camDistanceScale"] = 1.04
    E.db["unitframe"]["units"]["player"]["portrait"]["width"] = 55
    E.db["unitframe"]["units"]["player"]["smartAuraPosition"] = "BUFFS_ON_DEBUFFS"
    E.db["unitframe"]["units"]["player"]["health"]["xOffset"] = -2
    E.db["unitframe"]["units"]["player"]["health"]["text_format"] = ""
    E.db["unitframe"]["units"]["player"]["health"]["position"] = "RIGHT"
    -- E.db["unitframe"]["units"]["player"]["CombatIcon"]["xOffset"] = -70
    -- E.db["unitframe"]["units"]["player"]["CombatIcon"]["size"] = 60
    -- E.db["unitframe"]["units"]["player"]["CombatIcon"]["yOffset"] = 19
    E.db["unitframe"]["units"]["player"]["CombatIcon"]["anchorPoint"] = "BOTTOMLEFT"
    E.db["unitframe"]["units"]["player"]["CombatIcon"]["size"] = 60
    E.db["unitframe"]["units"]["player"]["CombatIcon"]["xOffset"] = -55
    E.db["unitframe"]["units"]["player"]["CombatIcon"]["yOffset"] = -20
    -- E.db["unitframe"]["units"]["player"]["classbar"]["autoHide"] = true
    E.db["unitframe"]["units"]["player"]["classbar"]["autoHide"] = false
    E.db["unitframe"]["units"]["player"]["aurabar"]["enable"] = true
    E.db["unitframe"]["units"]["player"]["RestIcon"]["size"] = 28
    E.db["unitframe"]["units"]["player"]["RestIcon"]["texture"] = "Resting0"
    E.db["unitframe"]["units"]["player"]["RestIcon"]["xOffset"] = 4
    E.db["unitframe"]["units"]["player"]["RestIcon"]["yOffset"] = 2
    E.db["unitframe"]["units"]["player"]["power"]["attachTextTo"] = "Power"
    E.db["unitframe"]["units"]["player"]["power"]["height"] = 20
    E.db["unitframe"]["units"]["player"]["power"]["text_format"] = ""
    E.db["unitframe"]["units"]["player"]["power"]["xOffset"] = -208
    E.db["unitframe"]["units"]["player"]["power"]["EnergyManaRegen"] = true
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerName"]["attachTextTo"] = "Frame"
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerName"]["xOffset"] = 5
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerName"]["text_format"] =
        "[name:medium] [difficultycolor] [level] [shortclassification]"
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerName"]["yOffset"] = 40
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerName"]["font"] = "Montserrat-Bold"
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerName"]["justifyH"] = "RIGHT"
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerName"]["fontOutline"] = "NONE"
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerName"]["enable"] = true
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerName"]["size"] = 13
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerHealth"]["attachTextTo"] = "Health"
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerHealth"]["xOffset"] = -5
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerHealth"]["text_format"] = "[health:current-percent]"
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerHealth"]["yOffset"] = 0
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerHealth"]["font"] = "Montserrat-Bold"
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerHealth"]["justifyH"] = "RIGHT"
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerHealth"]["fontOutline"] = "NONE"
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerHealth"]["enable"] = true
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerHealth"]["size"] = 20
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerPower"]["attachTextTo"] = "Power"
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerPower"]["xOffset"] = -5
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerPower"]["text_format"] = "[power:current]"
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerPower"]["yOffset"] = 0
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerPower"]["font"] = "Montserrat-Bold"
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerPower"]["justifyH"] = "RIGHT"
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerPower"]["fontOutline"] = "NONE"
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerPower"]["enable"] = true
    E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerPower"]["size"] = 13
    E.db["unitframe"]["units"]["player"]["width"] = 200

    E.db["unitframe"]["units"]["focus"]["aurabar"]["detachedWidth"] = 270
    E.db["unitframe"]["units"]["focus"]["aurabar"]["enable"] = true
    E.db["unitframe"]["units"]["focus"]["aurabar"]["maxBars"] = 6
    E.db["unitframe"]["units"]["focus"]["buffs"]["attachTo"] = "DEBUFFS"
    E.db["unitframe"]["units"]["focus"]["buffs"]["countFont"] = "Montserrat-Bold"
    E.db["unitframe"]["units"]["focus"]["buffs"]["enable"] = true
    E.db["unitframe"]["units"]["focus"]["buffs"]["maxDuration"] = 0
    E.db["unitframe"]["units"]["focus"]["buffs"]["perrow"] = 8
    E.db["unitframe"]["units"]["focus"]["buffs"]["priority"] = "Blacklist,Personal,nonPersonal"
    E.db["unitframe"]["units"]["focus"]["buffs"]["yOffset"] = 16
    E.db["unitframe"]["units"]["focus"]["castbar"]["height"] = 30
    E.db["unitframe"]["units"]["focus"]["castbar"]["insideInfoPanel"] = false
    E.db["unitframe"]["units"]["focus"]["castbar"]["overlayOnFrame"] = "Power"
    E.db["unitframe"]["units"]["focus"]["castbar"]["width"] = 200
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetHealth"]["attachTextTo"] = "Health"
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetHealth"]["enable"] = true
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetHealth"]["font"] = "Montserrat-Bold"
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetHealth"]["fontOutline"] = "NONE"
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetHealth"]["justifyH"] = "LEFT"
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetHealth"]["size"] = 20
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetHealth"]["text_format"] = "[health:current-percent]"
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetHealth"]["xOffset"] = 5
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetHealth"]["yOffset"] = 0
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetLevel"]["attachTextTo"] = "Health"
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetLevel"]["enable"] = true
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetLevel"]["font"] = "Montserrat-Bold"
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetLevel"]["fontOutline"] = "OUTLINE"
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetLevel"]["justifyH"] = "CENTER"
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetLevel"]["size"] = 20
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetLevel"]["text_format"] = "[difficultycolor][smartlevel]"
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetLevel"]["xOffset"] = 125
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetLevel"]["yOffset"] = -35
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetName"]["attachTextTo"] = "Frame"
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetName"]["enable"] = true
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetName"]["font"] = "Montserrat-Bold"
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetName"]["fontOutline"] = "NONE"
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetName"]["justifyH"] = "LEFT"
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetName"]["size"] = 13
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetName"]["text_format"] =
        "[name:medium]  [shortclassification]"
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetName"]["xOffset"] = 0
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetName"]["yOffset"] = 40
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetPower"]["attachTextTo"] = "Power"
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetPower"]["enable"] = true
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetPower"]["font"] = "Montserrat-Bold"
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetPower"]["fontOutline"] = "NONE"
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetPower"]["justifyH"] = "LEFT"
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetPower"]["size"] = 13
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetPower"]["text_format"] = "[power:current]"
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetPower"]["xOffset"] = 5
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetPower"]["yOffset"] = 0
    E.db["unitframe"]["units"]["focus"]["debuffs"]["anchorPoint"] = "TOPLEFT"
    E.db["unitframe"]["units"]["focus"]["debuffs"]["attachTo"] = "HEALTH"
    E.db["unitframe"]["units"]["focus"]["debuffs"]["countFont"] = "Montserrat-Bold"
    E.db["unitframe"]["units"]["focus"]["debuffs"]["maxDuration"] = 0
    E.db["unitframe"]["units"]["focus"]["debuffs"]["numrows"] = 2
    E.db["unitframe"]["units"]["focus"]["debuffs"]["perrow"] = 8
    E.db["unitframe"]["units"]["focus"]["debuffs"]["priority"] =
        "Blacklist,Personal,RaidDebuffs,CCDebuffs,Friendly:Dispellable"
    E.db["unitframe"]["units"]["focus"]["debuffs"]["yOffset"] = 30
    E.db["unitframe"]["units"]["focus"]["disableMouseoverGlow"] = true
    E.db["unitframe"]["units"]["focus"]["disableTargetGlow"] = true
    E.db["unitframe"]["units"]["focus"]["healPrediction"]["absorbStyle"] = "NORMAL"
    E.db["unitframe"]["units"]["focus"]["health"]["attachTextTo"] = "InfoPanel"
    E.db["unitframe"]["units"]["focus"]["height"] = 60
    E.db["unitframe"]["units"]["focus"]["infoPanel"]["height"] = 20
    E.db["unitframe"]["units"]["focus"]["name"]["attachTextTo"] = "Frame"
    E.db["unitframe"]["units"]["focus"]["name"]["position"] = "BOTTOM"
    E.db["unitframe"]["units"]["focus"]["name"]["text_format"] = ""
    E.db["unitframe"]["units"]["focus"]["name"]["xOffset"] = 5
    E.db["unitframe"]["units"]["focus"]["name"]["yOffset"] = -85
    E.db["unitframe"]["units"]["focus"]["orientation"] = "RIGHT"
    E.db["unitframe"]["units"]["focus"]["portrait"]["camDistanceScale"] = 1.04
    E.db["unitframe"]["units"]["focus"]["portrait"]["enable"] = true
    E.db["unitframe"]["units"]["focus"]["portrait"]["width"] = 55
    E.db["unitframe"]["units"]["focus"]["power"]["attachTextTo"] = "Power"
    E.db["unitframe"]["units"]["focus"]["power"]["height"] = 20
    E.db["unitframe"]["units"]["focus"]["power"]["xOffset"] = -208
    E.db["unitframe"]["units"]["focus"]["width"] = 200

    -- Player castbar
    if WOW_PROJECT_ID == WOW_PROJECT_CLASSIC then -- Classic
        E.db["unitframe"]["units"]["player"]["castbar"]["height"] = 35
        E.db["unitframe"]["units"]["player"]["castbar"]["width"] = 410
        E.db["unitframe"]["units"]["player"]["castbar"]["strataAndLevel"]["frameStrata"] = "HIGH"
        E.db["unitframe"]["units"]["player"]["castbar"]["strataAndLevel"]["useCustomStrata"] = true
    end
    if WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC then -- TBCc
        E.db["unitframe"]["units"]["player"]["castbar"]["height"] = 35
        E.db["unitframe"]["units"]["player"]["castbar"]["width"] = 399
    end
    if WOW_PROJECT_ID == WOW_PROJECT_MAINLINE then -- Retail
        E.db["unitframe"]["units"]["player"]["castbar"]["height"] = 35
        E.db["unitframe"]["units"]["player"]["castbar"]["width"] = 395
    end

    E.db["unitframe"]["units"]["player"]["name"]["attachTextTo"] = "Frame"
    E.db["unitframe"]["units"]["player"]["name"]["xOffset"] = 5
    E.db["unitframe"]["units"]["player"]["name"]["position"] = "BOTTOM"
    E.db["unitframe"]["units"]["player"]["height"] = 60
    E.db["unitframe"]["units"]["player"]["buffs"]["anchorPoint"] = "TOPRIGHT"
    E.db["unitframe"]["units"]["player"]["buffs"]["growthX"] = "LEFT"
    E.db["unitframe"]["units"]["player"]["buffs"]["enable"] = false
    E.db["unitframe"]["units"]["player"]["pvpIcon"]["anchorPoint"] = "TOPLEFT"
    E.db["unitframe"]["units"]["player"]["pvpIcon"]["enable"] = true
    E.db["unitframe"]["units"]["player"]["pvpIcon"]["scale"] = 1.5
    E.db["unitframe"]["units"]["player"]["pvpIcon"]["xOffset"] = -75
    E.db["unitframe"]["units"]["player"]["pvpIcon"]["yOffset"] = 27
    E.db["unitframe"]["units"]["pet"]["customTexts"]["Pet Health"]["attachTextTo"] = "Frame"
    E.db["unitframe"]["units"]["pet"]["customTexts"]["Pet Health"]["enable"] = true
    E.db["unitframe"]["units"]["pet"]["customTexts"]["Pet Health"]["text_format"] = ""
    E.db["unitframe"]["units"]["pet"]["customTexts"]["Pet Health"]["yOffset"] = 0
    E.db["unitframe"]["units"]["pet"]["customTexts"]["Pet Health"]["font"] = "2002"
    E.db["unitframe"]["units"]["pet"]["customTexts"]["Pet Health"]["justifyH"] = "LEFT"
    E.db["unitframe"]["units"]["pet"]["customTexts"]["Pet Health"]["fontOutline"] = "THICKOUTLINE"
    E.db["unitframe"]["units"]["pet"]["customTexts"]["Pet Health"]["xOffset"] = 131
    E.db["unitframe"]["units"]["pet"]["customTexts"]["Pet Health"]["size"] = 24
    E.db["unitframe"]["units"]["pet"]["width"] = 200
    E.db["unitframe"]["units"]["pet"]["infoPanel"]["height"] = 14
    E.db["unitframe"]["units"]["pet"]["castbar"]["height"] = 30
    E.db["unitframe"]["units"]["pet"]["castbar"]["iconSize"] = 32
    E.db["unitframe"]["units"]["pet"]["castbar"]["width"] = 200
    E.db["unitframe"]["units"]["pet"]["castbar"]["overlayOnFrame"] = "Power"
    E.db["unitframe"]["units"]["pet"]["disableTargetGlow"] = false
    E.db["unitframe"]["units"]["pet"]["height"] = 30
    E.db["unitframe"]["units"]["pet"]["buffs"]["enable"] = true
    E.db["unitframe"]["units"]["pet"]["buffs"]["yOffset"] = -22
    E.db["unitframe"]["units"]["pet"]["name"]["xOffset"] = 2
    E.db["unitframe"]["units"]["pet"]["name"]["position"] = "LEFT"

    -- PET - Use happiness icon for classic only

    if WOW_PROJECT_ID == WOW_PROJECT_CLASSIC then -- Classic
        E.db["unitframe"]["units"]["pet"]["name"]["text_format"] = "[happiness:discord] [name:medium] - [level]"
    end
    if WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC then -- TBCc
        E.db["unitframe"]["units"]["pet"]["name"]["text_format"] = "[happiness:discord] [name:medium] - [level]"
    end
    if WOW_PROJECT_ID == WOW_PROJECT_MAINLINE then -- Retail
        E.db["unitframe"]["units"]["pet"]["name"]["text_format"] = "[name:medium] - [level]"
    end

    E.db["unitframe"]["units"]["party"]["horizontalSpacing"] = 2
    E.db["unitframe"]["units"]["party"]["debuffs"]["numrows"] = 2
    E.db["unitframe"]["units"]["party"]["debuffs"]["sizeOverride"] = 25
    E.db["unitframe"]["units"]["party"]["debuffs"]["attachTo"] = "HEALTH"
    E.db["unitframe"]["units"]["party"]["debuffs"]["perrow"] = 3
    E.db["unitframe"]["units"]["party"]["debuffs"]["xOffset"] = 24
    E.db["unitframe"]["units"]["party"]["debuffs"]["countFont"] = "Montserrat-Bold"
    E.db["unitframe"]["units"]["party"]["debuffs"]["anchorPoint"] = "CENTER"
    E.db["unitframe"]["units"]["party"]["debuffs"]["yOffset"] = 10
    E.db["unitframe"]["units"]["party"]["rdebuffs"]["font"] = "Montserrat-Bold"
    E.db["unitframe"]["units"]["party"]["raidRoleIcons"]["yOffset"] = -2
    E.db["unitframe"]["units"]["party"]["resurrectIcon"]["size"] = 40
    E.db["unitframe"]["units"]["party"]["buffIndicator"]["enable"] = true
    E.db["unitframe"]["units"]["party"]["buffIndicator"]["size"] = 15
    E.db["unitframe"]["units"]["party"]["orientation"] = "MIDDLE"

    E.db["unitframe"]["units"]["party"]["readycheckIcon"]["yOffset"] = 0
    E.db["unitframe"]["units"]["party"]["readycheckIcon"]["size"] = 30
    E.db["unitframe"]["units"]["party"]["readycheckIcon"]["position"] = "TOPRIGHT"
    E.db["unitframe"]["units"]["party"]["power"]["height"] = 10
    E.db["unitframe"]["units"]["party"]["power"]["text_format"] = ""
    E.db["unitframe"]["units"]["party"]["healPrediction"]["enable"] = true
    E.db["unitframe"]["units"]["party"]["name"]["text_format"] = "[name:medium] [difficultycolor][smartlevel]"
    E.db["unitframe"]["units"]["party"]["name"]["yOffset"] = 4
    E.db["unitframe"]["units"]["party"]["health"]["xOffset"] = 0
    E.db["unitframe"]["units"]["party"]["health"]["yOffset"] = -10
    E.db["unitframe"]["units"]["party"]["health"]["text_format"] = "[health:current-percent]"
    E.db["unitframe"]["units"]["party"]["health"]["position"] = "CENTER"
    E.db["unitframe"]["units"]["party"]["width"] = 100
    E.db["unitframe"]["units"]["party"]["height"] = 60

    E.db["unitframe"]["units"]["raid40"]["rdebuffs"]["enable"] = true
    E.db["unitframe"]["units"]["raid40"]["rdebuffs"]["font"] = "Montserrat-Bold"
    E.db["unitframe"]["units"]["raid40"]["growthDirection"] = "RIGHT_UP"
    E.db["unitframe"]["units"]["raid40"]["width"] = 100
    E.db["unitframe"]["units"]["raid40"]["height"] = 32
    E.db["unitframe"]["units"]["raid40"]["buffIndicator"]["enable"] = true
    E.db["unitframe"]["units"]["raid40"]["buffIndicator"]["size"] = 10
    E.db["unitframe"]["units"]["target"]["debuffs"]["anchorPoint"] = "TOPLEFT"
    E.db["unitframe"]["units"]["target"]["debuffs"]["countFont"] = "Montserrat-Bold"
    E.db["unitframe"]["units"]["target"]["debuffs"]["growthX"] = "RIGHT"
    E.db["unitframe"]["units"]["target"]["debuffs"]["maxDuration"] = 0
    E.db["unitframe"]["units"]["target"]["debuffs"]["numrows"] = 3
    E.db["unitframe"]["units"]["target"]["debuffs"]["perrow"] = 6
    E.db["unitframe"]["units"]["target"]["debuffs"]["sizeOverride"] = 32
    E.db["unitframe"]["units"]["target"]["debuffs"]["yOffset"] = 10
    E.db["unitframe"]["units"]["target"]["debuffs"]["attachTo"] = "BUFFS"
    E.db["unitframe"]["units"]["target"]["portrait"]["enable"] = true
    E.db["unitframe"]["units"]["target"]["portrait"]["camDistanceScale"] = 1.04
    E.db["unitframe"]["units"]["target"]["portrait"]["width"] = 55
    E.db["unitframe"]["units"]["target"]["health"]["text_format"] = ""
    E.db["unitframe"]["units"]["target"]["power"]["attachTextTo"] = "Power"
    E.db["unitframe"]["units"]["target"]["power"]["height"] = 20
    E.db["unitframe"]["units"]["target"]["power"]["text_format"] = ""
    E.db["unitframe"]["units"]["target"]["power"]["xOffset"] = -208
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetName"]["attachTextTo"] = "Frame"
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetName"]["xOffset"] = 0
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetName"]["text_format"] =
        "[name:medium]  [shortclassification]"
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetName"]["yOffset"] = 40
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetName"]["font"] = "Montserrat-Bold"
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetName"]["justifyH"] = "LEFT"
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetName"]["fontOutline"] = "NONE"
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetName"]["enable"] = true
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetName"]["size"] = 13
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetHealth"]["attachTextTo"] = "Health"
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetHealth"]["xOffset"] = 5
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetHealth"]["text_format"] = "[health:current-percent]"
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetHealth"]["yOffset"] = 0
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetHealth"]["font"] = "Montserrat-Bold"
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetHealth"]["justifyH"] = "LEFT"
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetHealth"]["fontOutline"] = "NONE"
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetHealth"]["enable"] = true
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetHealth"]["size"] = 20
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetLevel"]["attachTextTo"] = "Health"
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetLevel"]["xOffset"] = 125
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetLevel"]["text_format"] = "[difficultycolor][smartlevel]"
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetLevel"]["yOffset"] = -35
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetLevel"]["font"] = "Montserrat-Bold"
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetLevel"]["justifyH"] = "CENTER"
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetLevel"]["fontOutline"] = "OUTLINE"
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetLevel"]["enable"] = true
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetLevel"]["size"] = 20
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetPower"]["attachTextTo"] = "Power"
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetPower"]["xOffset"] = 5
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetPower"]["text_format"] = "[power:current]"
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetPower"]["yOffset"] = 0
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetPower"]["font"] = "Montserrat-Bold"
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetPower"]["justifyH"] = "LEFT"
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetPower"]["fontOutline"] = "NONE"
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetPower"]["enable"] = true
    E.db["unitframe"]["units"]["target"]["customTexts"]["TargetPower"]["size"] = 13
    E.db["unitframe"]["units"]["target"]["pvpIcon"]["anchorPoint"] = "BOTTOMRIGHT"
    E.db["unitframe"]["units"]["target"]["pvpIcon"]["enable"] = true
    E.db["unitframe"]["units"]["target"]["pvpIcon"]["scale"] = 1.3
    E.db["unitframe"]["units"]["target"]["pvpIcon"]["xOffset"] = 77
    E.db["unitframe"]["units"]["target"]["pvpIcon"]["yOffset"] = 4
    E.db["unitframe"]["units"]["target"]["width"] = 200
    E.db["unitframe"]["units"]["target"]["fader"]["hover"] = true
    E.db["unitframe"]["units"]["target"]["fader"]["combat"] = true
    E.db["unitframe"]["units"]["target"]["fader"]["power"] = true
    E.db["unitframe"]["units"]["target"]["fader"]["enable"] = false
    E.db["unitframe"]["units"]["target"]["fader"]["range"] = false
    E.db["unitframe"]["units"]["target"]["fader"]["playertarget"] = true
    E.db["unitframe"]["units"]["target"]["fader"]["vehicle"] = true
    E.db["unitframe"]["units"]["target"]["fader"]["casting"] = true
    E.db["unitframe"]["units"]["target"]["fader"]["health"] = true
    E.db["unitframe"]["units"]["target"]["castbar"]["height"] = 30
    E.db["unitframe"]["units"]["target"]["castbar"]["width"] = 200
    E.db["unitframe"]["units"]["target"]["castbar"]["overlayOnFrame"] = "Power"
    E.db["unitframe"]["units"]["target"]["height"] = 60
    E.db["unitframe"]["units"]["target"]["buffs"]["anchorPoint"] = "BOTTOMLEFT"
    E.db["unitframe"]["units"]["target"]["buffs"]["attachTo"] = "HEALTH"
    E.db["unitframe"]["units"]["target"]["buffs"]["countFont"] = "Montserrat-Bold"
    E.db["unitframe"]["units"]["target"]["buffs"]["growthX"] = "RIGHT"
    E.db["unitframe"]["units"]["target"]["buffs"]["yOffset"] = 90
    E.db["unitframe"]["units"]["target"]["name"]["attachTextTo"] = "Frame"
    E.db["unitframe"]["units"]["target"]["name"]["position"] = "BOTTOM"
    E.db["unitframe"]["units"]["target"]["name"]["xOffset"] = 5
    E.db["unitframe"]["units"]["target"]["name"]["text_format"] = ""
    E.db["unitframe"]["units"]["target"]["name"]["yOffset"] = -85
    E.db["unitframe"]["smartRaidFilter"] = false
    E.db["unitframe"]["units"]["raid40"]["enable"] = true
    E.db["unitframe"]["units"]["party"]["visibility"] = "[@raid6,exists][nogroup] hide;show"
    E.db["unitframe"]["units"]["raid"]["visibility"] = "[@raid6,noexists][@raid26,exists] hide;show"
    E.db["unitframe"]["units"]["raid40"]["visibility"] = "[@raid26,noexists] hide;show"

    -- Basic Raid Frame setup
    E.db["unitframe"]["units"]["raid"]["debuffs"]["anchorPoint"] = "CENTER"
    E.db["unitframe"]["units"]["raid"]["debuffs"]["sizeOverride"] = 25
    E.db["unitframe"]["units"]["raid"]["debuffs"]["enable"] = true
    E.db["unitframe"]["units"]["raid"]["debuffs"]["attachTo"] = "HEALTH"
    E.db["unitframe"]["units"]["raid"]["debuffs"]["xOffset"] = 24
    E.db["unitframe"]["units"]["raid"]["debuffs"]["countFont"] = "Montserrat-Bold"
    E.db["unitframe"]["units"]["raid"]["debuffs"]["numrows"] = 2
    E.db["unitframe"]["units"]["raid"]["debuffs"]["yOffset"] = 10
    E.db["unitframe"]["units"]["raid"]["rdebuffs"]["font"] = "Montserrat-Bold"
    -- E.db["unitframe"]["units"]["raid"]["rdebuffs"]["size"] = 30
    E.db["unitframe"]["units"]["raid"]["rdebuffs"]["xOffset"] = 0
    E.db["unitframe"]["units"]["raid"]["rdebuffs"]["yOffset"] = 5
    E.db["unitframe"]["units"]["raid"]["growthDirection"] = "RIGHT_UP"
    E.db["unitframe"]["units"]["raid"]["resurrectIcon"]["size"] = 40
    E.db["unitframe"]["units"]["raid"]["width"] = 100
    E.db["unitframe"]["units"]["raid"]["infoPanel"]["enable"] = false
    E.db["unitframe"]["units"]["raid"]["numGroups"] = 6
    E.db["unitframe"]["units"]["raid"]["name"]["attachTextTo"] = "Frame"
    E.db["unitframe"]["units"]["raid"]["name"]["position"] = "CENTER"
    E.db["unitframe"]["units"]["raid"]["name"]["text_format"] = "[name:veryshort] [difficultycolor][smartlevel]"
    E.db["unitframe"]["units"]["raid"]["name"]["xOffset"] = 0
    E.db["unitframe"]["units"]["raid"]["name"]["yOffset"] = 10
    E.db["unitframe"]["units"]["raid"]["height"] = 50
    E.db["unitframe"]["units"]["raid"]["verticalSpacing"] = -1
    E.db["unitframe"]["units"]["raid"]["health"]["xOffset"] = 0
    E.db["unitframe"]["units"]["raid"]["health"]["yOffset"] = -10
    E.db["unitframe"]["units"]["raid"]["health"]["text_format"] = "[health:current-percent]"
    E.db["unitframe"]["units"]["raid"]["health"]["position"] = "CENTER"
    E.db["unitframe"]["units"]["raid"]["readycheckIcon"]["yOffset"] = 0
    E.db["unitframe"]["units"]["raid"]["readycheckIcon"]["size"] = 30
    E.db["unitframe"]["units"]["raid"]["readycheckIcon"]["position"] = "TOPRIGHT"
    E.db["unitframe"]["units"]["raid"]["power"]["height"] = 10
    E.db["unitframe"]["units"]["raid"]["power"]["position"] = "RIGHT"
    E.db["unitframe"]["units"]["raid"]["power"]["yOffset"] = 0
    E.db["unitframe"]["units"]["raid"]["raidRoleIcons"]["yOffset"] = -2
    E.db["unitframe"]["units"]["raid"]["buffs"]["perrow"] = 8
    E.db["unitframe"]["units"]["raid"]["buffIndicator"]["enable"] = true
    E.db["unitframe"]["units"]["raid"]["buffIndicator"]["size"] = 10

    E.db["unitframe"]["units"]["targettarget"]["portrait"]["overlay"] = true
    E.db["unitframe"]["units"]["targettarget"]["portrait"]["xOffset"] = 0.05
    E.db["unitframe"]["units"]["targettarget"]["portrait"]["camDistanceScale"] = 0.85
    E.db["unitframe"]["units"]["targettarget"]["portrait"]["width"] = 35
    E.db["unitframe"]["units"]["targettarget"]["customTexts"]["TargetTargetName"]["attachTextTo"] = "Health"
    E.db["unitframe"]["units"]["targettarget"]["customTexts"]["TargetTargetName"]["xOffset"] = 0
    E.db["unitframe"]["units"]["targettarget"]["customTexts"]["TargetTargetName"]["text_format"] = "[name:medium]"
    E.db["unitframe"]["units"]["targettarget"]["customTexts"]["TargetTargetName"]["yOffset"] = 0
    E.db["unitframe"]["units"]["targettarget"]["customTexts"]["TargetTargetName"]["font"] = "Montserrat-Bold"
    E.db["unitframe"]["units"]["targettarget"]["customTexts"]["TargetTargetName"]["justifyH"] = "CENTER"
    E.db["unitframe"]["units"]["targettarget"]["customTexts"]["TargetTargetName"]["fontOutline"] = "NONE"
    E.db["unitframe"]["units"]["targettarget"]["customTexts"]["TargetTargetName"]["enable"] = false
    E.db["unitframe"]["units"]["targettarget"]["customTexts"]["TargetTargetName"]["size"] = 14
    E.db["unitframe"]["units"]["targettarget"]["width"] = 200
    E.db["unitframe"]["units"]["targettarget"]["name"]["text_format"] =
        "[name:medium] [difficultycolor][smartlevel] [shortclassification]"
    E.db["unitframe"]["units"]["targettarget"]["orientation"] = "LEFT"
    E.db["unitframe"]["units"]["targettarget"]["height"] = 30
    E.db["unitframe"]["font"] = "Montserrat-Bold"
    E.db["unitframe"]["colors"]["auraBarBuff"]["r"] = 0.96
    E.db["unitframe"]["colors"]["auraBarBuff"]["g"] = 0.55
    E.db["unitframe"]["colors"]["auraBarBuff"]["b"] = 0.73
    E.db["unitframe"]["colors"]["healthclass"] = true
    E.db["unitframe"]["colors"]["castClassColor"] = true
    E.db["unitframe"]["colors"]["borderColor"]["b"] = 0.32156862745098
    E.db["unitframe"]["colors"]["borderColor"]["g"] = 0.25882352941176
    E.db["unitframe"]["colors"]["borderColor"]["r"] = 0.23137254901961
    E.db["unitframe"]["colors"]["castNoInterrupt"]["b"] = 0.4156862745098
    E.db["unitframe"]["colors"]["castNoInterrupt"]["g"] = 0.38039215686275
    E.db["unitframe"]["colors"]["castNoInterrupt"]["r"] = 0.74901960784314
    E.db["unitframe"]["fontOutline"] = "NONE"
    E.db["unitframe"]["smoothbars"] = true
    E.db["unitframe"]["targetSound"] = true
    E.db["unitframe"]["cooldown"]["expiringColor"]["b"] = 0.41176470588235
    E.db["unitframe"]["cooldown"]["expiringColor"]["g"] = 0.38039215686275
    E.db["unitframe"]["cooldown"]["expiringColor"]["r"] = 0.74901960784314

    --   Role icon
    if WOW_PROJECT_ID == WOW_PROJECT_MAINLINE then -- Retail
        E.db["unitframe"]["units"]["party"]["roleIcon"]["damager"] = false
        E.db["unitframe"]["units"]["party"]["roleIcon"]["combatHide"] = true
        E.db["unitframe"]["units"]["raid40"]["roleIcon"]["enable"] = true
        E.db["unitframe"]["units"]["raid40"]["roleIcon"]["combatHide"] = true
        E.db["unitframe"]["units"]["raid40"]["roleIcon"]["damager"] = false
        E.db["unitframe"]["units"]["raid"]["roleIcon"]["xOffset"] = 0
        E.db["unitframe"]["units"]["raid"]["roleIcon"]["attachTo"] = "InfoPanel"
        E.db["unitframe"]["units"]["raid"]["roleIcon"]["size"] = 12
        E.db["unitframe"]["units"]["raid"]["roleIcon"]["combatHide"] = true
        E.db["unitframe"]["units"]["raid"]["roleIcon"]["damager"] = false
    end
end

function NoobTacoUI:SetupUnitFrames(layout, wowver)

    -- DPS and TANK Layout
    if layout == 'v1' then
        E.db.unitframes = nil

        E.db["unitframe"]["units"]["party"]["growthDirection"] = "DOWN_RIGHT"

        E.db["unitframe"]["units"]["raid"]["buffIndicator"]["size"] = 8
        E.db["unitframe"]["units"]["raid"]["debuffs"]["sizeOverride"] = 18
        E.db["unitframe"]["units"]["raid"]["debuffs"]["xOffset"] = 18
        E.db["unitframe"]["units"]["raid"]["debuffs"]["yOffset"] = 5
        E.db["unitframe"]["units"]["raid"]["healPrediction"]["enable"] = false
        E.db["unitframe"]["units"]["raid"]["health"]["text_format"] = ""
        E.db["unitframe"]["units"]["raid"]["height"] = 45
        E.db["unitframe"]["units"]["raid"]["name"]["yOffset"] = 0
        E.db["unitframe"]["units"]["raid"]["rdebuffs"]["size"] = 20
        E.db["unitframe"]["units"]["raid"]["verticalSpacing"] = -1
        E.db["unitframe"]["units"]["raid"]["width"] = 75

        E.db["unitframe"]["units"]["raid40"]["width"] = 75

        -- UNIT FRAME MOVERS -----------------------------------------------------------
        E.db["movers"]["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,127"
        E.db["movers"]["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-288,-215"
        E.db["movers"]["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-289,-227"
        E.db["movers"]["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-370"
        -- E.db["movers"]["ElvUF_FocusMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-536,-530"
        E.db["movers"]["ElvUF_FocusCastbarMover"] = "TOPLEFT,ElvUF_Focus,BOTTOMLEFT,0,-1"
        E.db["movers"]["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-440,365"
        E.db["movers"]["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,275"
        E.db["movers"]["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-240,158"
        E.db["movers"]["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-240,158"
        E.db["movers"]["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-240,192"
        E.db["movers"]["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,262"
        E.db["movers"]["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,262"
        E.db["movers"]["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-305"
        E.db["movers"]["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,240,158"
        E.db["movers"]["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,240,192"
        E.db["movers"]["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,240,158"

        -- Heal Layout
    elseif layout == 'v2' then
        E.db.unitframes = nil

        -- Party Frames
        E.db["unitframe"]["units"]["party"]["buffIndicator"]["size"] = 15
        E.db["unitframe"]["units"]["party"]["debuffs"]["anchorPoint"] = "CENTER"
        E.db["unitframe"]["units"]["party"]["debuffs"]["attachTo"] = "HEALTH"
        E.db["unitframe"]["units"]["party"]["debuffs"]["countFont"] = "Montserrat-Bold"
        E.db["unitframe"]["units"]["party"]["debuffs"]["numrows"] = 2
        E.db["unitframe"]["units"]["party"]["debuffs"]["perrow"] = 3
        E.db["unitframe"]["units"]["party"]["debuffs"]["sizeOverride"] = 25
        E.db["unitframe"]["units"]["party"]["debuffs"]["xOffset"] = 24
        E.db["unitframe"]["units"]["party"]["debuffs"]["yOffset"] = 10
        E.db["unitframe"]["units"]["party"]["growthDirection"] = "RIGHT_DOWN"
        E.db["unitframe"]["units"]["party"]["healPrediction"]["enable"] = true
        E.db["unitframe"]["units"]["party"]["health"]["position"] = "CENTER"
        E.db["unitframe"]["units"]["party"]["health"]["text_format"] = "[health:current-percent]"
        E.db["unitframe"]["units"]["party"]["health"]["xOffset"] = 0
        E.db["unitframe"]["units"]["party"]["health"]["yOffset"] = -10
        E.db["unitframe"]["units"]["party"]["height"] = 60
        E.db["unitframe"]["units"]["party"]["horizontalSpacing"] = 3
        E.db["unitframe"]["units"]["party"]["name"]["text_format"] = "[name:medium] [difficultycolor][smartlevel]"
        E.db["unitframe"]["units"]["party"]["name"]["yOffset"] = 4
        E.db["unitframe"]["units"]["party"]["orientation"] = "MIDDLE"
        E.db["unitframe"]["units"]["party"]["power"]["height"] = 10
        E.db["unitframe"]["units"]["party"]["power"]["text_format"] = ""
        E.db["unitframe"]["units"]["party"]["raidRoleIcons"]["yOffset"] = -2
        E.db["unitframe"]["units"]["party"]["rdebuffs"]["font"] = "Montserrat-Bold"
        E.db["unitframe"]["units"]["party"]["readycheckIcon"]["position"] = "TOPRIGHT"
        E.db["unitframe"]["units"]["party"]["readycheckIcon"]["size"] = 30
        E.db["unitframe"]["units"]["party"]["readycheckIcon"]["yOffset"] = 0
        E.db["unitframe"]["units"]["party"]["resurrectIcon"]["size"] = 40
        E.db["unitframe"]["units"]["party"]["width"] = 90

        -- Raid Frames 25
        E.db["unitframe"]["units"]["raid"]["buffIndicator"]["size"] = 10
        E.db["unitframe"]["units"]["raid"]["buffs"]["perrow"] = 8
        E.db["unitframe"]["units"]["raid"]["debuffs"]["anchorPoint"] = "CENTER"
        E.db["unitframe"]["units"]["raid"]["debuffs"]["attachTo"] = "HEALTH"
        E.db["unitframe"]["units"]["raid"]["debuffs"]["countFont"] = "Montserrat-Bold"
        E.db["unitframe"]["units"]["raid"]["debuffs"]["enable"] = true
        E.db["unitframe"]["units"]["raid"]["debuffs"]["numrows"] = 2
        E.db["unitframe"]["units"]["raid"]["debuffs"]["sizeOverride"] = 25
        E.db["unitframe"]["units"]["raid"]["debuffs"]["xOffset"] = 24
        E.db["unitframe"]["units"]["raid"]["debuffs"]["yOffset"] = 10
        E.db["unitframe"]["units"]["raid"]["growthDirection"] = "LEFT_DOWN"
        E.db["unitframe"]["units"]["raid"]["healPrediction"]["enable"] = true
        E.db["unitframe"]["units"]["raid"]["health"]["position"] = "CENTER"
        E.db["unitframe"]["units"]["raid"]["health"]["text_format"] = "[health:current-percent]"
        E.db["unitframe"]["units"]["raid"]["health"]["xOffset"] = 0
        E.db["unitframe"]["units"]["raid"]["health"]["yOffset"] = -10
        E.db["unitframe"]["units"]["raid"]["height"] = 45
        E.db["unitframe"]["units"]["raid"]["name"]["attachTextTo"] = "Frame"
        E.db["unitframe"]["units"]["raid"]["name"]["text_format"] = "[name:veryshort] [difficultycolor][smartlevel]"
        E.db["unitframe"]["units"]["raid"]["name"]["yOffset"] = 10
        E.db["unitframe"]["units"]["raid"]["power"]["height"] = 10
        E.db["unitframe"]["units"]["raid"]["power"]["position"] = "RIGHT"
        E.db["unitframe"]["units"]["raid"]["power"]["yOffset"] = 0
        E.db["unitframe"]["units"]["raid"]["raidRoleIcons"]["yOffset"] = -2
        E.db["unitframe"]["units"]["raid"]["rdebuffs"]["font"] = "Montserrat-Bold"
        E.db["unitframe"]["units"]["raid"]["rdebuffs"]["size"] = 30
        E.db["unitframe"]["units"]["raid"]["rdebuffs"]["yOffset"] = 5
        E.db["unitframe"]["units"]["raid"]["readycheckIcon"]["position"] = "TOPRIGHT"
        E.db["unitframe"]["units"]["raid"]["readycheckIcon"]["size"] = 30
        E.db["unitframe"]["units"]["raid"]["readycheckIcon"]["yOffset"] = 0
        E.db["unitframe"]["units"]["raid"]["resurrectIcon"]["attachTo"] = "BOTTOMRIGHT"
        E.db["unitframe"]["units"]["raid"]["resurrectIcon"]["size"] = 40
        E.db["unitframe"]["units"]["raid"]["verticalSpacing"] = 2
        E.db["unitframe"]["units"]["raid"]["width"] = 90
        E.db["unitframe"]["units"]["raid"]["numGroups"] = 5

        -- Raid 40
        E.db["unitframe"]["units"]["raid40"]["buffIndicator"]["size"] = 10
        E.db["unitframe"]["units"]["raid40"]["growthDirection"] = "RIGHT_UP"
        E.db["unitframe"]["units"]["raid40"]["height"] = 32
        E.db["unitframe"]["units"]["raid40"]["rdebuffs"]["enable"] = true
        E.db["unitframe"]["units"]["raid40"]["rdebuffs"]["font"] = "Montserrat-Bold"
        E.db["unitframe"]["units"]["raid40"]["width"] = 90

        E.db["movers"]["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,127"
        E.db["movers"]["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-288,-215"
        E.db["movers"]["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-289,-227"
        E.db["movers"]["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-370"
        -- E.db["movers"]["ElvUF_FocusMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-536,-530"
        E.db["movers"]["ElvUF_FocusCastbarMover"] = "TOPLEFT,ElvUF_Focus,BOTTOMLEFT,0,-1"
        E.db["movers"]["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-440,365"
        E.db["movers"]["ElvUF_PartyMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,285"
        E.db["movers"]["ElvUF_PetCastbarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,250"
        E.db["movers"]["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,250"
        E.db["movers"]["ElvUF_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,285"
        E.db["movers"]["ElvUF_Raid40Mover"] = "BOTTOM,ElvUIParent,BOTTOM,0,115"
        E.db["movers"]["ElvUF_RaidMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,115"
        E.db["movers"]["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-305"
        E.db["movers"]["ElvUF_TargetCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-540,250"
        E.db["movers"]["ElvUF_TargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-540,285"
        E.db["movers"]["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-540,250"

    end
    -- Update ElvUI --------------------------------------
    E:UpdateAll(true)

    -- Show message about layout being set
    PluginInstallStepComplete.message = "Unitframes Set"
    PluginInstallStepComplete:Show()
end
