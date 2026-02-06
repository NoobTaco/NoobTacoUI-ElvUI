local addonName, Engine = ...
local NoobTacoUIElv = Engine.NoobTacoUIElv
local E, L, V, P, G = Engine.E, Engine.L, Engine.V, Engine.P, Engine.G

-- CHANGELOG --------------------------------------------------------------------
--[[
    Version 1.5.0 - General improvements
        - Updated the font used for general UI to "Poppins-SemiBold"
        - Adjusted the colors for general UI
        - Increased the font size for general UI
        - Adjusted the size pvpsubzone, pvpzone, questsmall, questtext, questtitle, talkingtext, talkingtitle, worldsubzone, worldzone fonts
]]
function NoobTacoUIElv:SetupGeneral()
    --	PrivateDB
    E.private["skins"]["parchmentRemoverEnable"] = true
    E.private["general"]["namefont"] = "Poppins-SemiBold"
    E.private["general"]["dmgfont"] = "Poppins-SemiBold"
    E.private["general"]["normTex"] = "NT_Nord05"
    E.private["general"]["glossTex"] = "NT_Nord04"
    E.private["general"]["chatBubbleFont"] = "Poppins-SemiBold"
    E.private["general"]["chatBubbleFontSize"] = 14
    E.private["general"]["nameplateLargeFont"] = "Poppins-SemiBold"
    E.private["general"]["nameplateFont"] = "Poppins-SemiBold"

    if E.Retail then -- Retail
        E.db["general"]["itemLevel"]["itemLevelFont"] = "Poppins-SemiBold"
        E.db["general"]["itemLevel"]["itemLevelFontSize"] = 15
        E.db["general"]["itemLevel"]["totalLevelFont"] = "Poppins-SemiBold"
        E.db["general"]["itemLevel"]["totalLevelFontSize"] = 20
        E.db["general"]["altPowerBar"]["statusBarColor"]["b"] = 0.67450980392157
        E.db["general"]["altPowerBar"]["statusBarColor"]["g"] = 0.50588235294118
        E.db["general"]["altPowerBar"]["statusBarColor"]["r"] = 0.36862745098039
        E.db["general"]["altPowerBar"]["font"] = "Poppins-SemiBold"
        E.db["general"]["altPowerBar"]["fontOutline"] = "NONE"
        E.db["general"]["altPowerBar"]["height"] = 25
        E.db["general"]["altPowerBar"]["width"] = 417
    end

    E.db["general"]["addonCompartment"]["font"] = "Poppins-SemiBold"

    E.db["general"]["font"] = "Poppins-Medium"
    E.db["general"]["fontStyle"] = "NONE"
    E.db["general"]["fonts"]["cooldown"]["font"] = "Poppins-Bold"
    E.db["general"]["fonts"]["errortext"]["font"] = "Poppins-Bold"
    E.db["general"]["fonts"]["mailbody"]["enable"] = true
    E.db["general"]["fonts"]["mailbody"]["font"] = "Poppins-SemiBold"
    E.db["general"]["fonts"]["objective"]["enable"] = true
    E.db["general"]["fonts"]["objective"]["font"] = "Poppins-SemiBold"
    E.db["general"]["fonts"]["pvpsubzone"]["enable"] = true
    E.db["general"]["fonts"]["pvpsubzone"]["font"] = "Poppins-SemiBold"
    E.db["general"]["fonts"]["pvpzone"]["enable"] = true
    E.db["general"]["fonts"]["pvpzone"]["font"] = "Poppins-Bold"
    E.db["general"]["fonts"]["questsmall"]["enable"] = true
    E.db["general"]["fonts"]["questsmall"]["font"] = "Poppins-Medium"
    E.db["general"]["fonts"]["questtext"]["enable"] = true
    E.db["general"]["fonts"]["questtext"]["font"] = "Poppins-Medium"
    E.db["general"]["fonts"]["questtitle"]["enable"] = true
    E.db["general"]["fonts"]["questtitle"]["font"] = "Poppins-SemiBold"
    E.db["general"]["fonts"]["talkingtext"]["enable"] = true
    E.db["general"]["fonts"]["talkingtext"]["font"] = "Poppins-Medium"
    E.db["general"]["fonts"]["talkingtitle"]["enable"] = true
    E.db["general"]["fonts"]["talkingtitle"]["font"] = "Poppins-SemiBold"
    E.db["general"]["fonts"]["worldsubzone"]["enable"] = true
    E.db["general"]["fonts"]["worldsubzone"]["font"] = "Poppins-SemiBold"
    E.db["general"]["fonts"]["worldzone"]["enable"] = true
    E.db["general"]["fonts"]["worldzone"]["font"] = "Poppins-Bold"
    E.db["general"]["lootRoll"]["nameFont"] = "Poppins-SemiBold"
    E.db["general"]["itemLevel"]["itemLevelFont"] = "Poppins-SemiBold"
    E.db["general"]["itemLevel"]["itemLevelFontSize"] = 15
    E.db["general"]["itemLevel"]["totalLevelFont"] = "Poppins-SemiBold"
    E.db["general"]["fontSize"] = 14
    E.db["general"]["autoTrackReputation"] = true
    E.db["general"]["autoRepair"] = "PLAYER"
    E.db["general"]["minimap"]["size"] = 200
    E.db["general"]["minimap"]["locationFont"] = "Poppins-SemiBold"
    E.db["general"]["talkingHeadFrameBackdrop"] = true
    E.db["general"]["resurrectSound"] = true
    E.db["general"]["backdropfadecolor"]["a"] = .8
    E.db["general"]["backdropfadecolor"]["b"] = 0.22352942824364
    E.db["general"]["backdropfadecolor"]["g"] = 0.1803921610117
    E.db["general"]["backdropfadecolor"]["r"] = 0.16078431904316
    E.db["general"]["objectiveFrameHeight"] = 400
    E.db["general"]["backdropcolor"]["b"] = 0.32156863808632
    E.db["general"]["backdropcolor"]["g"] = 0.258823543787
    E.db["general"]["backdropcolor"]["r"] = 0.23137256503105
    E.db["general"]["bordercolor"]["b"] = 0.41568630933762
    E.db["general"]["bordercolor"]["g"] = 0.33725491166115
    E.db["general"]["bordercolor"]["r"] = 0.29803922772408
    E.db["general"]["valuecolor"]["b"] = 0.75686281919479
    E.db["general"]["valuecolor"]["g"] = 0.63137257099152
    E.db["general"]["valuecolor"]["r"] = 0.50588238239288
    E.db["general"]["bonusObjectivePosition"] = "AUTO"
    E.db["general"]["cooldownManager"]["nameFont"] = "Poppins-SemiBold"
    E.db["general"]["queueStatus"]["font"] = "Poppins-SemiBold"
    E.db["general"]["talkingHeadFrameScale"] = 1
    E.db["general"]["interruptAnnounce"] = "RAID"
    E.db["general"]["bottomPanel"] = true
    E.db["general"]["bottomPanelSettings"]["transparent"] = true
    E.db["general"]["bottomPanelSettings"]["height"] = 27
    E.db["general"]["customGlow"]["style"] = "Action Button Glow"

    -- Player totembar
    E.db["general"]["totems"]["growthDirection"] = "HORIZONTAL"
    E.db["general"]["totems"]["size"] = 25
    E.db["general"]["totems"]["sortDirection"] = "DESCENDING"
    E.db["general"]["totems"]["spacing"] = 1
end
