local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

function NoobTacoUI:SetupNamePlates()
    -- NAMEPLATES -------------------------------------------------------------
    E.db["v11NamePlateReset"] = true
    E.db["nameplates"]["threat"]["indicator"] = true
    E.db["nameplates"]["units"]["PLAYER"]["debuffs"]["countFontOutline"] = "NONE"
    E.db["nameplates"]["units"]["PLAYER"]["debuffs"]["priority"] =
        "Blacklist,Dispellable,blockNoDuration,Personal,Boss,CCDebuffs"
    E.db["nameplates"]["units"]["PLAYER"]["debuffs"]["countFont"] = "Exo2-SemiBold"
    E.db["nameplates"]["units"]["PLAYER"]["debuffs"]["size"] = 40
    E.db["nameplates"]["units"]["PLAYER"]["castbar"]["iconOffsetX"] = 5
    E.db["nameplates"]["units"]["PLAYER"]["castbar"]["font"] = "Exo2-SemiBold"
    E.db["nameplates"]["units"]["PLAYER"]["castbar"]["height"] = 12
    E.db["nameplates"]["units"]["PLAYER"]["castbar"]["iconSize"] = 25
    E.db["nameplates"]["units"]["PLAYER"]["raidTargetIndicator"]["size"] = 30
    E.db["nameplates"]["units"]["PLAYER"]["buffs"]["maxDuration"] = 0
    E.db["nameplates"]["units"]["PLAYER"]["buffs"]["priority"] = "Blacklist,blockNoDuration,Personal,TurtleBuffs"
    E.db["nameplates"]["units"]["PLAYER"]["buffs"]["countFont"] = "Exo2-SemiBold"
    E.db["nameplates"]["units"]["PLAYER"]["buffs"]["countFontOutline"] = "NONE"
    E.db["nameplates"]["units"]["PLAYER"]["health"]["height"] = 16
    E.db["nameplates"]["units"]["PLAYER"]["health"]["text"]["font"] = "Exo2-Bold"
    E.db["nameplates"]["units"]["PLAYER"]["health"]["text"]["position"] = "TOPRIGHT"
    E.db["nameplates"]["units"]["PLAYER"]["health"]["text"]["fontOutline"] = "NONE"
    E.db["nameplates"]["units"]["PLAYER"]["health"]["text"]["parent"] = "Health"
    E.db["nameplates"]["units"]["PLAYER"]["health"]["text"]["format"] = "[health:current-percent-nostatus]"
    E.db["nameplates"]["units"]["PLAYER"]["health"]["text"]["fontSize"] = 10
    E.db["nameplates"]["units"]["PLAYER"]["health"]["text"]["yOffset"] = -14

    if E.Classic then -- Classic
        E.db["nameplates"]["units"]["PLAYER"]["power"]["displayAltPower"] = false
    end
    if E.TBC then -- TBCc
        E.db["nameplates"]["units"]["PLAYER"]["power"]["displayAltPower"] = false
    end
    if E.Retail then -- Retail
        E.db["nameplates"]["units"]["PLAYER"]["power"]["displayAltPower"] = true
    end

    E.db["nameplates"]["units"]["PLAYER"]["power"]["height"] = 5
    E.db["nameplates"]["units"]["PLAYER"]["power"]["hideWhenEmpty"] = true
    E.db["nameplates"]["units"]["PLAYER"]["power"]["yOffset"] = -11
    E.db["nameplates"]["units"]["PLAYER"]["title"]["format"] = "[guild]"
    E.db["nameplates"]["units"]["PLAYER"]["name"]["font"] = "Exo2-Bold"
    E.db["nameplates"]["units"]["PLAYER"]["name"]["enable"] = true
    E.db["nameplates"]["units"]["PLAYER"]["name"]["format"] = "[name:abbrev:short]"
    E.db["nameplates"]["units"]["PLAYER"]["name"]["fontSize"] = 14
    E.db["nameplates"]["units"]["PLAYER"]["name"]["yOffset"] = 0
    E.db["nameplates"]["units"]["PLAYER"]["level"]["enable"] = true
    E.db["nameplates"]["units"]["PLAYER"]["level"]["fontSize"] = 12
    E.db["nameplates"]["units"]["PLAYER"]["level"]["font"] = "Exo2-Bold"
    E.db["nameplates"]["units"]["PLAYER"]["level"]["yOffset"] = 0
    E.db["nameplates"]["units"]["TARGET"]["glowStyle"] = "style7"
    E.db["nameplates"]["units"]["TARGET"]["arrow"] = "Arrow11"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["countFontOutline"] = "NONE"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["priority"] =
        "Blacklist,Dispellable,blockNoDuration,Personal,Boss,CCDebuffs"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["countFont"] = "Exo2-SemiBold"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["size"] = 40

    if E.Classic then -- Classic
        E.db["nameplates"]["units"]["FRIENDLY_NPC"]["power"]["displayAltPower"] = false
    end
    if E.TBC then -- TBCc
        E.db["nameplates"]["units"]["FRIENDLY_NPC"]["power"]["displayAltPower"] = false
    end
    if E.Retail then -- Retail
        E.db["nameplates"]["units"]["FRIENDLY_NPC"]["power"]["displayAltPower"] = true
    end

    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["power"]["hideWhenEmpty"] = true
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["power"]["enable"] = true
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["power"]["height"] = 5
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["power"]["yOffset"] = -11
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["nameOnly"] = false
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["eliteIcon"]["enable"] = true
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["eliteIcon"]["xOffset"] = 6
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["eliteIcon"]["size"] = 30
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["raidTargetIndicator"]["size"] = 30
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["buffs"]["countFontOutline"] = "NONE"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["buffs"]["countFont"] = "Exo2-SemiBold"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["title"]["format"] = "[guild]"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["name"]["format"] = "[name:abbrev:short]"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["name"]["fontSize"] = 14
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["name"]["font"] = "Exo2-Bold"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["name"]["yOffset"] = 0
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["height"] = 16
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["text"]["font"] = "Exo2-Bold"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["text"]["fontOutline"] = "NONE"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["text"]["position"] = "TOPRIGHT"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["text"]["parent"] = "Health"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["text"]["format"] = "[health:current-percent-nostatus]"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["text"]["fontSize"] = 10
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["text"]["yOffset"] = -14
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["level"]["format"] = "[difficultycolor][level]"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["level"]["fontSize"] = 12
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["level"]["font"] = "Exo2-Bold"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["level"]["yOffset"] = 0

    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["questIcon"]["size"] = 30
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["questIcon"]["font"] = "Exo2-Bold"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["questIcon"]["position"] = "CENTER"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["questIcon"]["yOffset"] = 35
    E.db["nameplates"]["units"]["ENEMY_NPC"]["questIcon"]["font"] = "Roboto-Black"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["questIcon"]["position"] = "LEFT"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["questIcon"]["xOffset"] = 5
    E.db["nameplates"]["units"]["ENEMY_NPC"]["questIcon"]["textPosition"] = "TOP"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["questIcon"]["size"] = 40
    E.db["nameplates"]["units"]["ENEMY_NPC"]["questIcon"]["yOffset"] = 1

    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["font"] = "Exo2-SemiBold"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["height"] = 12
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["iconOffsetX"] = 5
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["iconSize"] = 25
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["yOffset"] = -20
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["countFont"] = "Exo2-SemiBold"
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["countFontOutline"] = "NONE"
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["size"] = 40
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["font"] = "Exo2-SemiBold"
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["height"] = 12
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["iconOffsetX"] = 5
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["iconSize"] = 25
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["yOffset"] = -20
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["raidTargetIndicator"]["size"] = 30
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["countFontOutline"] = "NONE"
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["countFont"] = "Exo2-SemiBold"
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["title"]["format"] = "[guild]"

    if E.Classic then -- Classic
        E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["power"]["displayAltPower"] = false
    end
    if E.TBC then -- TBCc
        E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["power"]["displayAltPower"] = false
    end
    if E.Retail then -- Retail
        E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["power"]["displayAltPower"] = true
    end

    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["power"]["hideWhenEmpty"] = true
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["power"]["enable"] = true
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["power"]["height"] = 5
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["power"]["yOffset"] = -11
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["height"] = 16
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["text"]["font"] = "Exo2-Bold"
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["text"]["fontOutline"] = "NONE"
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["text"]["position"] = "TOPRIGHT"
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["text"]["parent"] = "Health"
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["text"]["format"] = "[health:current-percent-nostatus]"
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["text"]["fontSize"] = 10
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["text"]["yOffset"] = -14
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["level"]["fontSize"] = 12
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["level"]["font"] = "Exo2-Bold"
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["level"]["yOffset"] = 0
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["name"]["format"] = "[name:abbrev:short]"
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["name"]["fontSize"] = 14
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["name"]["font"] = "Exo2-Bold"
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["name"]["yOffset"] = 0
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["countFontOutline"] = "NONE"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["priority"] =
        "Blacklist,Dispellable,blockNoDuration,Personal,Boss,CCDebuffs"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["countFont"] = "Exo2-SemiBold"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["size"] = 40
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["font"] = "Exo2-SemiBold"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["height"] = 12
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["iconOffsetX"] = 5
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["iconSize"] = 25
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["yOffset"] = -20
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["raidTargetIndicator"]["size"] = 30
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["maxDuration"] = 0
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["priority"] = "Blacklist,blockNoDuration,Personal,TurtleBuffs"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["countFont"] = "Exo2-SemiBold"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["countFontOutline"] = "NONE"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["title"]["format"] = "[guild]"

    if E.Classic then -- Classic
        E.db["nameplates"]["units"]["ENEMY_PLAYER"]["power"]["displayAltPower"] = false
    end
    if E.TBC then -- TBCc
        E.db["nameplates"]["units"]["ENEMY_PLAYER"]["power"]["displayAltPower"] = false
    end
    if E.Retail then -- Retail
        E.db["nameplates"]["units"]["ENEMY_PLAYER"]["power"]["displayAltPower"] = true
    end

    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["power"]["hideWhenEmpty"] = true
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["power"]["enable"] = true
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["power"]["height"] = 5
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["power"]["yOffset"] = -11
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["name"]["format"] = "[name:abbrev:short]"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["name"]["fontSize"] = 14
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["name"]["font"] = "Exo2-Bold"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["name"]["yOffset"] = 0
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["level"]["fontSize"] = 12
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["level"]["font"] = "Exo2-Bold"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["level"]["yOffset"] = 0
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["height"] = 16
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["text"]["font"] = "Exo2-Bold"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["text"]["fontOutline"] = "NONE"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["text"]["position"] = "TOPRIGHT"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["text"]["parent"] = "Health"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["text"]["format"] = "[health:current-percent-nostatus]"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["text"]["fontSize"] = 10
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["text"]["yOffset"] = -14
    E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["countFont"] = "Exo2-SemiBold"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["numAuras"] = 8
    E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["countFontOutline"] = "NONE"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["priority"] =
        "Blacklist,Dispellable,blockNoDuration,Personal,Boss,CCDebuffs"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["size"] = 30
    E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["yOffset"] = 15

    if E.Classic then -- Classic
        E.db["nameplates"]["units"]["ENEMY_NPC"]["power"]["displayAltPower"] = false
    end
    if E.TBC then -- TBCc
        E.db["nameplates"]["units"]["ENEMY_NPC"]["power"]["displayAltPower"] = false
    end
    if E.Retail then -- Retail
        E.db["nameplates"]["units"]["ENEMY_NPC"]["power"]["displayAltPower"] = true
    end

    E.db["nameplates"]["units"]["ENEMY_NPC"]["power"]["hideWhenEmpty"] = true
    E.db["nameplates"]["units"]["ENEMY_NPC"]["power"]["enable"] = true
    E.db["nameplates"]["units"]["ENEMY_NPC"]["power"]["height"] = 5
    E.db["nameplates"]["units"]["ENEMY_NPC"]["power"]["yOffset"] = -11
    E.db["nameplates"]["units"]["ENEMY_NPC"]["raidTargetIndicator"]["size"] = 30
    E.db["nameplates"]["units"]["ENEMY_NPC"]["eliteIcon"]["enable"] = true
    E.db["nameplates"]["units"]["ENEMY_NPC"]["eliteIcon"]["xOffset"] = 6
    E.db["nameplates"]["units"]["ENEMY_NPC"]["eliteIcon"]["size"] = 30
    E.db["nameplates"]["units"]["ENEMY_NPC"]["name"]["format"] = "[name:medium]"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["name"]["fontSize"] = 14
    E.db["nameplates"]["units"]["ENEMY_NPC"]["name"]["font"] = "Exo2-Bold"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["name"]["yOffset"] = 0
    E.db["nameplates"]["units"]["ENEMY_NPC"]["level"]["format"] = "[difficultycolor][level]"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["level"]["fontSize"] = 12
    E.db["nameplates"]["units"]["ENEMY_NPC"]["level"]["font"] = "Exo2-Bold"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["level"]["yOffset"] = 0
    E.db["nameplates"]["units"]["ENEMY_NPC"]["title"]["format"] = "[guild]"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["buffs"]["priority"] = "Blacklist,blockNoDuration,Personal,TurtleBuffs"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["buffs"]["countFont"] = "Exo2-SemiBold"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["buffs"]["countFontOutline"] = "NONE"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["height"] = 16
    E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["text"]["font"] = "Exo2-Bold"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["text"]["fontOutline"] = "NONE"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["text"]["position"] = "TOPRIGHT"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["text"]["parent"] = "Health"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["text"]["format"] = "[health:current-percent-nostatus]"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["text"]["fontSize"] = 10
    E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["text"]["yOffset"] = -14
    E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["font"] = "Exo2-SemiBold"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["height"] = 12
    E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["iconOffsetX"] = 5
    E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["iconSize"] = 25
    E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["yOffset"] = -20
    E.db["nameplates"]["smoothbars"] = true
    E.db["nameplates"]["font"] = "Exo2-Bold"
    E.db["nameplates"]["cooldown"]["expiringColor"]["b"] = 0.41176470588235
    E.db["nameplates"]["cooldown"]["expiringColor"]["g"] = 0.38039215686275
    E.db["nameplates"]["cooldown"]["expiringColor"]["r"] = 0.74901960784314
    E.db["nameplates"]["units"]["TARGET"]["classpower"]["enable"] = true
    E.db["nameplates"]["units"]["TARGET"]["classpower"]["height"] = 10
    E.db["nameplates"]["units"]["TARGET"]["classpower"]["spacing"] = 1
    E.db["nameplates"]["units"]["TARGET"]["classpower"]["yOffset"] = -18
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][1]["r"] = 1
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][1]["g"] = 0.50980392156863
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][1]["b"] = 0.55686274509804
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][2]["r"] = 1
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][2]["g"] = 0.65098039215686
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][2]["b"] = 0.53725490196078
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][3]["r"] = 1
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][3]["g"] = 0.85882352941176
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][3]["b"] = 0.5921568627451
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][4]["r"] = 0.85882352941176
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][4]["g"] = 1
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][4]["b"] = 0.73725490196078
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][5]["r"] = 0.47843137254902
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][5]["g"] = 0.90196078431373
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][5]["b"] = 0.30980392156863
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][6]["r"] = 1
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][6]["g"] = 0.78823529411765
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][6]["b"] = 0.96078431372549
end
