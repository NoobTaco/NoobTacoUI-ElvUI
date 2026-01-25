local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

-- CHANGELOG --------------------------------------------------------------------
--[[
    Version 1.5.0 - Nameplates improvements
        - Updated the font used for nameplates to "Poppins-SemiBold"
        - Adjusted the colors for nameplates
        - Increased the font size for nameplates
        - Removed second nameplate option
        - Updated the questIcon section for Enemy NPC and FRIENDLY_NPC

    Version 1.5.2  - Nameplates improvements
    - Refactored code in nameplates.lua
    - Fixed nameplate health text position

    Version 1.5.5 - Nameplates improvements
    - Updated the colors for class resources combo points
    - Adjusted the reaction colors for nameplates
    - Added support for new nameplate styles
    - Improved performance of nameplate updates
    - Fixed an issue with nameplate visibility in certain scenarios

    Version 1.6.0 - Nameplates bug fixes
    - Fixed "attempt to index field 'classbar' (a nil value)" error
    - Corrected database structure to use 'classpower' instead of 'classbar' for ENEMY_NPC and ENEMY_PLAYER units
    - Ensured proper initialization of classpower table before setting properties
    - Aligned with ElvUI's internal nameplate database structure

    Version 2.0.0 - Midnight Upgrade
    - Verified compatibility with ElvUI Midnight (14.x)
    - Ensured structure aligns with WoW 12.0 API changes
]]
function NoobTacoUI:SetupNamePlates()
    -- NAMEPLATES -------------------------------------------------------------
    -- Global Nameplate Settings
    E.db["nameplates"]["colors"]["castInterruptedColor"]["b"] = 0.10196079313755
    E.db["nameplates"]["colors"]["castInterruptedColor"]["g"] = 0.10196079313755
    E.db["nameplates"]["colors"]["castInterruptedColor"]["r"] = 1
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][1]["b"] = 0.55686274509804
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][1]["g"] = 0.50980392156863
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][1]["r"] = 1
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][2]["b"] = 0.53725490196078
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][2]["g"] = 0.65098039215686
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][2]["r"] = 1
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][3]["b"] = 0.5921568627451
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][3]["g"] = 0.85882352941176
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][3]["r"] = 1
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][4]["b"] = 0.73725490196078
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][4]["g"] = 1
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][4]["r"] = 0.85882352941176
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][5]["b"] = 0.30980392156863
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][5]["g"] = 0.90196078431373
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][5]["r"] = 0.47843137254902
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][6]["b"] = 0.96078431372549
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][6]["g"] = 0.78823529411765
    E.db["nameplates"]["colors"]["classResources"]["comboPoints"][6]["r"] = 1
    -- Friendly/Good reactions (Indices 5-8)
    for i = 5, 8 do
        E.db["nameplates"]["colors"]["reactions"][i]["b"] = 0.29
        E.db["nameplates"]["colors"]["reactions"][i]["g"] = 0.67
        E.db["nameplates"]["colors"]["reactions"][i]["r"] = 0.3
    end
    -- Neutral reaction (Index 4)
    E.db["nameplates"]["colors"]["reactions"][4]["g"] = 0.76
    E.db["nameplates"]["colors"]["selection"][0]["b"] = 0.25
    E.db["nameplates"]["colors"]["selection"][0]["g"] = 0.25
    E.db["nameplates"]["colors"]["selection"][0]["r"] = 0.78
    E.db["nameplates"]["colors"]["selection"][2]["b"] = 0.36
    E.db["nameplates"]["colors"]["selection"][2]["g"] = 0.76
    E.db["nameplates"]["colors"]["selection"][2]["r"] = 0.85
    E.db["nameplates"]["colors"]["selection"][3]["b"] = 0.3
    E.db["nameplates"]["colors"]["selection"][3]["g"] = 0.67
    E.db["nameplates"]["colors"]["selection"][3]["r"] = 0.29
    E.db["nameplates"]["colors"]["threat"]["badColor"]["b"] = 0
    E.db["nameplates"]["colors"]["threat"]["badColor"]["g"] = 0.047058828175068
    E.db["nameplates"]["colors"]["threat"]["badColor"]["r"] = 1
    E.db["nameplates"]["colors"]["threat"]["goodColor"]["b"] = 1
    E.db["nameplates"]["colors"]["threat"]["goodColor"]["g"] = 0.50196081399918
    E.db["nameplates"]["colors"]["threat"]["goodColor"]["r"] = 0.50196081399918
    E.db["nameplates"]["colors"]["threat"]["goodTransition"]["b"] = 0
    E.db["nameplates"]["colors"]["threat"]["goodTransition"]["g"] = 0.70196080207825
    E.db["nameplates"]["colors"]["threat"]["goodTransition"]["r"] = 1
    E.db["nameplates"]["colors"]["threat"]["offTankColor"]["g"] = 0.91764712333679
    E.db["nameplates"]["colors"]["threat"]["offTankColor"]["r"] = 0.7294117808342
    E.db["nameplates"]["colors"]["threat"]["offTankColorGoodTransition"]["b"] = 0.77647066116333
    E.db["nameplates"]["colors"]["threat"]["offTankColorGoodTransition"]["g"] = 0
    E.db["nameplates"]["colors"]["threat"]["offTankColorGoodTransition"]["r"] = 1
    if not E.global["nameplates"] then E.global["nameplates"] = {} end
    if not E.global["nameplates"]["filters"] then E.global["nameplates"]["filters"] = {} end

    if E.global["nameplates"]["filters"]["ElvUI_Target"] then
        E.global["nameplates"]["filters"]["ElvUI_Target"]["triggers"]["enable"] = true
    end
    E.db["nameplates"]["font"] = "Poppins-SemiBold"
    E.db["nameplates"]["overlapV"] = 1.3
    local plateSize = E.db["nameplates"]["plateSize"] or E.db["nameplates"]["clickSize"]
    if plateSize then
        plateSize["enemyHeight"] = 20
        plateSize["enemyWidth"] = 215
        plateSize["friendlyHeight"] = 20
        plateSize["friendlyWidth"] = 215
        plateSize["personalHeight"] = 20
        plateSize["personalWidth"] = 215
    end
    E.db["nameplates"]["statusbar"] = "NT_Nord15_Gradient"
    E.db["nameplates"]["smoothbars"] = true
    E.db["nameplates"]["threat"]["indicator"] = true

    -- TARGET Settings
    E.db["nameplates"]["units"]["TARGET"]["arrow"] = "ArrowUp"
    E.db["nameplates"]["units"]["TARGET"]["arrowScale"] = 1.04
    E.db["nameplates"]["units"]["TARGET"]["arrowSpacing"] = 0
    -- Initialize classpower table if it doesn't exist
    if not E.db["nameplates"]["units"]["TARGET"]["classpower"] then
        E.db["nameplates"]["units"]["TARGET"]["classpower"] = {}
    end
    E.db["nameplates"]["units"]["TARGET"]["classpower"]["enable"] = false
    E.db["nameplates"]["units"]["TARGET"]["classpower"]["height"] = 10
    E.db["nameplates"]["units"]["TARGET"]["classpower"]["width"] = 143
    E.db["nameplates"]["units"]["TARGET"]["classpower"]["yOffset"] = -18
    E.db["nameplates"]["units"]["TARGET"]["glowStyle"] = "style8"

    -- Nameplate Unit Settings
    -- Enemy NPC
    E.db["nameplates"]["units"]["ENEMY_NPC"]["buffs"]["attachTo"] = "DEBUFFS"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["buffs"]["countFont"] = "Poppins-SemiBold"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["buffs"]["countFontOutline"] = "NONE"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["buffs"]["priority"] = "Blacklist,blockNoDuration,Personal,TurtleBuffs"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["buffs"]["size"] = 30
    E.db["nameplates"]["units"]["ENEMY_NPC"]["buffs"]["yOffset"] = 0
    E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["font"] = "Poppins-SemiBold"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["fontSize"] = 15
    E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["height"] = 15
    E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["iconOffsetX"] = 5
    E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["iconSize"] = 25
    E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["showIcon"] = false
    E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["width"] = 215
    E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["yOffset"] = -20
    E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["xOffset"] = 0
    -- Initialize classpower table if it doesn't exist
    if not E.db["nameplates"]["units"]["ENEMY_NPC"]["classpower"] then
        E.db["nameplates"]["units"]["ENEMY_NPC"]["classpower"] = {}
    end
    E.db["nameplates"]["units"]["ENEMY_NPC"]["classpower"]["enable"] = false
    E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["anchorPoint"] = "TOPLEFT"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["countFont"] = "Poppins-SemiBold"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["countFontOutline"] = "NONE"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["growthX"] = "RIGHT"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["numAuras"] = 8
    E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["priority"] =
    "Blacklist,Dispellable,blockNoDuration,Personal,Boss,CCDebuffs"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["size"] = 25
    E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["yOffset"] = 0
    E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["xOffset"] = 0
    E.db["nameplates"]["units"]["ENEMY_NPC"]["eliteIcon"]["enable"] = false
    E.db["nameplates"]["units"]["ENEMY_NPC"]["eliteIcon"]["xOffset"] = 0
    E.db["nameplates"]["units"]["ENEMY_NPC"]["eliteIcon"]["yOffset"] = 20
    E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["height"] = 23
    E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["text"]["font"] = "Poppins-SemiBold"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["text"]["fontOutline"] = "SHADOW"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["text"]["fontSize"] = 12
    E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["text"]["format"] = "[perhp]%"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["text"]["enable"] = true
    E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["text"]["parent"] = "Health"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["text"]["position"] = "TOPRIGHT"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["text"]["yOffset"] = -19
    E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["text"]["xOffset"] = -5
    E.db["nameplates"]["units"]["ENEMY_NPC"]["level"]["enable"] = false
    E.db["nameplates"]["units"]["ENEMY_NPC"]["level"]["font"] = "Poppins-SemiBold"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["level"]["fontSize"] = 12
    E.db["nameplates"]["units"]["ENEMY_NPC"]["level"]["format"] = "[difficultycolor][level]"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["level"]["yOffset"] = 0
    E.db["nameplates"]["units"]["ENEMY_NPC"]["level"]["xOffset"] = 0
    E.db["nameplates"]["units"]["ENEMY_NPC"]["name"]["font"] = "Poppins-SemiBold"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["name"]["fontOutline"] = "SHADOW"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["name"]["fontSize"] = 14
    E.db["nameplates"]["units"]["ENEMY_NPC"]["name"]["format"] = "[name:medium]"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["name"]["xOffset"] = 5
    E.db["nameplates"]["units"]["ENEMY_NPC"]["name"]["yOffset"] = -18
    E.db["nameplates"]["units"]["ENEMY_NPC"]["name"]["Parent"] = "Health"    -- fix for #56
    E.db["nameplates"]["units"]["ENEMY_NPC"]["name"]["position"] = "TOPLEFT" -- fix for #56
    E.db["nameplates"]["units"]["ENEMY_NPC"]["power"]["displayAltPower"] = true
    E.db["nameplates"]["units"]["ENEMY_NPC"]["power"]["enable"] = true
    E.db["nameplates"]["units"]["ENEMY_NPC"]["power"]["height"] = 5
    E.db["nameplates"]["units"]["ENEMY_NPC"]["power"]["hideWhenEmpty"] = true
    E.db["nameplates"]["units"]["ENEMY_NPC"]["power"]["width"] = 215
    E.db["nameplates"]["units"]["ENEMY_NPC"]["power"]["yOffset"] = -11
    E.db["nameplates"]["units"]["ENEMY_NPC"]["power"]["xOffset"] = 0
    E.db["nameplates"]["units"]["ENEMY_NPC"]["raidTargetIndicator"]["position"] = "CENTER"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["raidTargetIndicator"]["size"] = 30
    E.db["nameplates"]["units"]["ENEMY_NPC"]["raidTargetIndicator"]["xOffset"] = 0
    E.db["nameplates"]["units"]["ENEMY_NPC"]["title"]["format"] = "[guild]"

    E.db["nameplates"]["units"]["ENEMY_NPC"]["questIcon"]["font"] = "Poppins-Medium"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["questIcon"]["position"] = "LEFT"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["questIcon"]["fontOutline"] = "SHADOW"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["questIcon"]["size"] = 20
    E.db["nameplates"]["units"]["ENEMY_NPC"]["questIcon"]["spacing"] = 0
    E.db["nameplates"]["units"]["ENEMY_NPC"]["questIcon"]["textPosition"] = "TOP"
    E.db["nameplates"]["units"]["ENEMY_NPC"]["questIcon"]["textXOffset"] = 0
    E.db["nameplates"]["units"]["ENEMY_NPC"]["questIcon"]["textYOffset"] = 5
    E.db["nameplates"]["units"]["ENEMY_NPC"]["questIcon"]["yOffset"] = 0
    E.db["nameplates"]["units"]["ENEMY_NPC"]["questIcon"]["xOffset"] = 0

    -- Enemy Player
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["attachTo"] = "DEBUFFS"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["countFont"] = "Poppins-SemiBold"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["countFontOutline"] = "NONE"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["maxDuration"] = 0
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["priority"] = "Blacklist,blockNoDuration,Personal,TurtleBuffs"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["size"] = 30
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["yOffset"] = 0
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["font"] = "Poppins-SemiBold"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["fontSize"] = 15
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["height"] = 15
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["iconOffsetX"] = 5
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["iconSize"] = 25
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["showIcon"] = false
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["width"] = 215
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["yOffset"] = -20
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["xOffset"] = 0
    -- Initialize classpower table if it doesn't exist
    if not E.db["nameplates"]["units"]["ENEMY_PLAYER"]["classpower"] then
        E.db["nameplates"]["units"]["ENEMY_PLAYER"]["classpower"] = {}
    end
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["classpower"]["enable"] = false
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["anchorPoint"] = "TOPLEFT"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["countFont"] = "Poppins-SemiBold"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["countFontOutline"] = "NONE"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["growthX"] = "RIGHT"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["numAuras"] = 8
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["priority"] =
    "Blacklist,Dispellable,blockNoDuration,Personal,Boss,CCDebuffs"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["size"] = 25
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["yOffset"] = 0
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["xOffset"] = 0
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["height"] = 23
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["text"]["font"] = "Poppins-SemiBold"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["text"]["text_format"] = "[perhp]%"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["text"]["fontOutline"] = "SHADOW"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["text"]["fontSize"] = 12
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["text"]["format"] = "[perhp]%"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["text"]["enable"] = true
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["text"]["parent"] = "Health"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["text"]["position"] = "TOPRIGHT"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["text"]["yOffset"] = -19
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["text"]["xOffset"] = -5
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["level"]["enable"] = false
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["level"]["font"] = "Poppins-SemiBold"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["level"]["fontSize"] = 12
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["level"]["yOffset"] = 0
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["name"]["enable"] = true
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["name"]["font"] = "Poppins-SemiBold"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["name"]["fontOutline"] = "SHADOW"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["name"]["fontSize"] = 12
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["name"]["format"] =
    "[difficultycolor][smartlevel] ||cffffffff[name:medium]||r"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["name"]["xOffset"] = 5
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["name"]["yOffset"] = -18
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["name"]["Parent"] = "Health"    -- fix for #56
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["name"]["position"] = "TOPLEFT" -- fix for #56
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["portrait"]["enable"] = true
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["portrait"]["position"] = "LEFT"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["portrait"]["xOffset"] = 0
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["portrait"]["yOffset"] = 0
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["power"]["displayAltPower"] = true
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["power"]["enable"] = true
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["power"]["height"] = 5
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["power"]["hideWhenEmpty"] = true
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["power"]["width"] = 215
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["power"]["yOffset"] = -11
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["raidTargetIndicator"]["position"] = "CENTER"
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["raidTargetIndicator"]["size"] = 30
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["raidTargetIndicator"]["xOffset"] = 0
    E.db["nameplates"]["units"]["ENEMY_PLAYER"]["title"]["format"] = "[guild]"

    -- FRIENDLY_NPC
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["auras"]["anchorPoint"] = "RIGHT"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["auras"]["enable"] = true
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["auras"]["filter"] = "HARMFUL"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["auras"]["numAuras"] = 2
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["auras"]["priority"] = "Blacklist,CCDebuffs"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["auras"]["xOffset"] = 2
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["auras"]["yOffset"] = 0
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["buffs"]["attachTo"] = "DEBUFFS"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["buffs"]["countFont"] = "Poppins-SemiBold"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["buffs"]["countFontOutline"] = "NONE"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["buffs"]["priority"] = "Blacklist,blockNoDuration,Personal,TurtleBuffs"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["buffs"]["size"] = 30
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["buffs"]["yOffset"] = 0
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["font"] = "Poppins-SemiBold"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["fontSize"] = 15
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["height"] = 15
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["iconOffsetX"] = 5
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["iconSize"] = 25
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["showIcon"] = false
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["width"] = 215
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["yOffset"] = -20
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["anchorPoint"] = "TOPLEFT"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["countFont"] = "Poppins-SemiBold"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["countFontOutline"] = "NONE"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["growthX"] = "RIGHT"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["numAuras"] = 8
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["priority"] =
    "Blacklist,Dispellable,blockNoDuration,Personal,Boss,CCDebuffs"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["size"] = 25
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["yOffset"] = 0
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["eliteIcon"]["enable"] = true
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["eliteIcon"]["xOffset"] = 0
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["eliteIcon"]["yOffset"] = 20
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["height"] = 23
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["text"]["font"] = "Poppins-SemiBold"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["text"]["fontOutline"] = "SHADOW"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["text"]["fontSize"] = 12
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["text"]["parent"] = "Health"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["text"]["position"] = "TOPRIGHT"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["text"]["yOffset"] = -19
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["text"]["xOffset"] = -5
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["text"]["format"] = "[perhp]%"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["text"]["enable"] = true
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["level"]["enable"] = false
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["level"]["font"] = "Poppins-SemiBold"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["level"]["fontSize"] = 12
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["level"]["format"] = "[difficultycolor][level]"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["level"]["yOffset"] = 0
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["name"]["font"] = "Poppins-SemiBold"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["name"]["fontOutline"] = "shadow"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["name"]["fontSize"] = 14
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["name"]["format"] = "[name:medium]"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["name"]["xOffset"] = 5
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["name"]["yOffset"] = -18
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["name"]["Parent"] = "Health"    -- fix for #56
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["name"]["position"] = "TOPLEFT" -- fix for #56
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["nameOnly"] = false
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["power"]["displayAltPower"] = true
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["power"]["enable"] = true
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["power"]["height"] = 5
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["power"]["hideWhenEmpty"] = true
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["power"]["width"] = 215
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["power"]["yOffset"] = -11
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["raidTargetIndicator"]["position"] = "CENTER"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["raidTargetIndicator"]["size"] = 30
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["raidTargetIndicator"]["xOffset"] = 0
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["title"]["format"] = "[guild]"

    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["questIcon"]["font"] = "Poppins-Medium"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["questIcon"]["position"] = "LEFT"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["questIcon"]["fontOutline"] = "SHADOW"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["questIcon"]["size"] = 20
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["questIcon"]["spacing"] = 0
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["questIcon"]["textPosition"] = "TOP"
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["questIcon"]["textXOffset"] = 0
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["questIcon"]["textYOffset"] = 5
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["questIcon"]["yOffset"] = 0
    E.db["nameplates"]["units"]["FRIENDLY_NPC"]["questIcon"]["xOffset"] = 0

    -- FRIENDLY_PLAYER
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["attachTo"] = "DEBUFFS"
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["countFont"] = "Poppins-SemiBold"
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["countFontOutline"] = "NONE"
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["priority"] =
    "Blacklist,blockNoDuration,Personal,TurtleBuffs"
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["size"] = 30
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["yOffset"] = 0
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["font"] = "Poppins-SemiBold"
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["fontSize"] = 15
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["height"] = 15
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["iconOffsetX"] = 5
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["iconSize"] = 25
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["showIcon"] = false
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["width"] = 215
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["yOffset"] = -20
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["anchorPoint"] = "TOPLEFT"
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["countFont"] = "Poppins-SemiBold"
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["countFontOutline"] = "NONE"
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["growthX"] = "RIGHT"
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["numAuras"] = 8
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["priority"] =
    "Blacklist,Dispellable,blockNoDuration,Personal,Boss,CCDebuffs"
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["size"] = 25
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["yOffset"] = 0
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["height"] = 23
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["text"]["font"] = "Poppins-SemiBold"
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["text"]["fontOutline"] = "SHADOW"
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["text"]["fontSize"] = 12
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["text"]["parent"] = "Health"
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["text"]["position"] = "TOPRIGHT"
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["text"]["yOffset"] = -19
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["text"]["xOffset"] = -5
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["text"]["format"] = "[perhp]%"
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["text"]["enable"] = true
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["enable"] = true
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["level"]["enable"] = false
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["level"]["font"] = "Poppins-SemiBold"
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["level"]["fontSize"] = 12
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["level"]["yOffset"] = 0
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["name"]["font"] = "Poppins-SemiBold"
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["name"]["fontOutline"] = "shadow"
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["name"]["fontSize"] = 14
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["name"]["format"] =
    "[difficultycolor][smartlevel] ||cffffffff[name:medium]||r"
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["name"]["xOffset"] = 5
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["name"]["yOffset"] = -18
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["name"]["Parent"] = "Health"    -- fix for #56
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["name"]["position"] = "TOPLEFT" -- fix for #56
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["power"]["displayAltPower"] = true
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["power"]["enable"] = true
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["power"]["height"] = 5
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["power"]["hideWhenEmpty"] = true
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["power"]["width"] = 215
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["power"]["yOffset"] = -11
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["raidTargetIndicator"]["position"] = "CENTER"
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["raidTargetIndicator"]["size"] = 30
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["raidTargetIndicator"]["xOffset"] = 0
    E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["title"]["format"] = "[guild]"

    -- PLAYER
    E.db["nameplates"]["units"]["PLAYER"]["buffs"]["countFont"] = "Poppins-SemiBold"
    E.db["nameplates"]["units"]["PLAYER"]["buffs"]["countFontOutline"] = "NONE"
    E.db["nameplates"]["units"]["PLAYER"]["buffs"]["maxDuration"] = 0
    E.db["nameplates"]["units"]["PLAYER"]["buffs"]["priority"] = "Blacklist,blockNoDuration,Personal,TurtleBuffs"
    E.db["nameplates"]["units"]["PLAYER"]["castbar"]["font"] = "Poppins-SemiBold"
    E.db["nameplates"]["units"]["PLAYER"]["castbar"]["height"] = 12
    E.db["nameplates"]["units"]["PLAYER"]["castbar"]["iconOffsetX"] = 5
    E.db["nameplates"]["units"]["PLAYER"]["castbar"]["iconSize"] = 25
    E.db["nameplates"]["units"]["PLAYER"]["debuffs"]["countFont"] = "Poppins-SemiBold"
    E.db["nameplates"]["units"]["PLAYER"]["debuffs"]["countFontOutline"] = "NONE"
    E.db["nameplates"]["units"]["PLAYER"]["debuffs"]["numAuras"] = 8
    E.db["nameplates"]["units"]["PLAYER"]["debuffs"]["priority"] =
    "Blacklist,Dispellable,blockNoDuration,Personal,Boss,CCDebuffs"
    E.db["nameplates"]["units"]["PLAYER"]["debuffs"]["size"] = 30
    E.db["nameplates"]["units"]["PLAYER"]["debuffs"]["yOffset"] = 15
    E.db["nameplates"]["units"]["PLAYER"]["health"]["height"] = 16
    E.db["nameplates"]["units"]["PLAYER"]["health"]["text"]["font"] = "Poppins-SemiBold"
    E.db["nameplates"]["units"]["PLAYER"]["health"]["text"]["fontOutline"] = "SHADOW"
    E.db["nameplates"]["units"]["PLAYER"]["health"]["text"]["fontSize"] = 10
    E.db["nameplates"]["units"]["PLAYER"]["health"]["text"]["parent"] = "Health"
    E.db["nameplates"]["units"]["PLAYER"]["health"]["text"]["position"] = "BOTTOMRIGHT"
    E.db["nameplates"]["units"]["PLAYER"]["health"]["text"]["yOffset"] = 13
    E.db["nameplates"]["units"]["PLAYER"]["health"]["text"]["xOffset"] = 0
    E.db["nameplates"]["units"]["PLAYER"]["health"]["text"]["format"] = "[health:percent]"
    E.db["nameplates"]["units"]["PLAYER"]["health"]["text"]["enable"] = true
    E.db["nameplates"]["units"]["PLAYER"]["health"]["enable"] = true
    E.db["nameplates"]["units"]["PLAYER"]["level"]["enable"] = true
    E.db["nameplates"]["units"]["PLAYER"]["level"]["font"] = "Poppins-SemiBold"
    E.db["nameplates"]["units"]["PLAYER"]["level"]["fontSize"] = 12
    E.db["nameplates"]["units"]["PLAYER"]["level"]["yOffset"] = 0
    E.db["nameplates"]["units"]["PLAYER"]["name"]["enable"] = true
    E.db["nameplates"]["units"]["PLAYER"]["name"]["font"] = "Poppins-SemiBold"
    E.db["nameplates"]["units"]["PLAYER"]["name"]["fontSize"] = 14
    E.db["nameplates"]["units"]["PLAYER"]["name"]["format"] = "[name:medium]"
    E.db["nameplates"]["units"]["PLAYER"]["name"]["yOffset"] = 0
    E.db["nameplates"]["units"]["PLAYER"]["name"]["position"] = "TOPLEFT" -- fix for #56
    E.db["nameplates"]["units"]["PLAYER"]["name"]["Parent"] = "Nameplate" -- fix for #56
    E.db["nameplates"]["units"]["PLAYER"]["power"]["displayAltPower"] = true
    E.db["nameplates"]["units"]["PLAYER"]["power"]["height"] = 5
    E.db["nameplates"]["units"]["PLAYER"]["power"]["hideWhenEmpty"] = true
    E.db["nameplates"]["units"]["PLAYER"]["power"]["yOffset"] = -11
    E.db["nameplates"]["units"]["PLAYER"]["raidTargetIndicator"]["position"] = "CENTER"
    E.db["nameplates"]["units"]["PLAYER"]["raidTargetIndicator"]["size"] = 30
    E.db["nameplates"]["units"]["PLAYER"]["raidTargetIndicator"]["xOffset"] = 0
    E.db["nameplates"]["units"]["PLAYER"]["title"]["format"] = "[guild]"

    -- Nameplate filters
    if E.global["nameplates"]["filters"]["ElvUI_Incorporeal"] then
        E.global["nameplates"]["filters"]["ElvUI_Incorporeal"]["actions"]["texture"]["enable"] = true
        E.global["nameplates"]["filters"]["ElvUI_Incorporeal"]["actions"]["texture"]["texture"] = "Details Flat"
    end

    if E.global["nameplates"]["filters"]["ElvUI_NonTarget"] then
        E.global["nameplates"]["filters"]["ElvUI_NonTarget"]["actions"]["alpha"] = 100
        E.global["nameplates"]["filters"]["ElvUI_NonTarget"]["actions"]["texture"]["enable"] = true
        E.global["nameplates"]["filters"]["ElvUI_NonTarget"]["actions"]["texture"]["texture"] = "Solid"
    end

    if E.global["nameplates"]["filters"]["ElvUI_Target"] then
        E.global["nameplates"]["filters"]["ElvUI_Target"]["actions"]["alpha"] = 100
        E.global["nameplates"]["filters"]["ElvUI_Target"]["actions"]["color"]["healthClass"] = true
        E.global["nameplates"]["filters"]["ElvUI_Target"]["actions"]["color"]["healthColor"]["b"] = 0.8156863451004
        E.global["nameplates"]["filters"]["ElvUI_Target"]["actions"]["color"]["healthColor"]["g"] = 0.75294125080109
        E.global["nameplates"]["filters"]["ElvUI_Target"]["actions"]["color"]["healthColor"]["r"] = 0.53333336114883
        E.global["nameplates"]["filters"]["ElvUI_Target"]["actions"]["flash"]["color"]["b"] = 0.8156863451004
        E.global["nameplates"]["filters"]["ElvUI_Target"]["actions"]["flash"]["color"]["g"] = 0.75294125080109
        E.global["nameplates"]["filters"]["ElvUI_Target"]["actions"]["flash"]["color"]["r"] = 0.53333336114883
        E.global["nameplates"]["filters"]["ElvUI_Target"]["actions"]["glow"]["color"][1] = 0.53333336114883
        E.global["nameplates"]["filters"]["ElvUI_Target"]["actions"]["glow"]["color"][2] = 0.75294125080109
        E.global["nameplates"]["filters"]["ElvUI_Target"]["actions"]["glow"]["color"][3] = 0.8156863451004
        E.global["nameplates"]["filters"]["ElvUI_Target"]["actions"]["glow"]["color"][4] = 0.89999997615814
        E.global["nameplates"]["filters"]["ElvUI_Target"]["actions"]["glow"]["lines"] = 6
        E.global["nameplates"]["filters"]["ElvUI_Target"]["actions"]["glow"]["speed"] = 0.5
        E.global["nameplates"]["filters"]["ElvUI_Target"]["actions"]["health"]["flash"]["color"]["a"] = 0.22023865580559
        E.global["nameplates"]["filters"]["ElvUI_Target"]["actions"]["health"]["flash"]["speed"] = 7
        E.global["nameplates"]["filters"]["ElvUI_Target"]["actions"]["health"]["glow"]["speed"] = 0.05
        E.global["nameplates"]["filters"]["ElvUI_Target"]["actions"]["scale"] = 1.05
        E.global["nameplates"]["filters"]["ElvUI_Target"]["triggers"]["bossMods"]["enable"] = false
    end
end
