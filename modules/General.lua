local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

function NoobTacoUI:SetupGeneral()

    --	PrivateDB
    E.private["skins"]["parchmentRemoverEnable"] = true
    E.private["general"]["namefont"] = "Exo2-Bold"
    E.private["general"]["dmgfont"] = "Exo2-Bold"
    E.private["general"]["normTex"] = "ElvUI Norm"
    E.private["general"]["glossTex"] = "ElvUI Norm"
    E.private["general"]["chatBubbleFont"] = "Exo2-SemiBold"
    E.private["general"]["chatBubbleFontSize"] = 16
    E.private["general"]["nameplateLargeFont"] = "Exo2-Bold"
    E.private["general"]["nameplateFont"] = "Exo2-SemiBold"

    if E.Retail then -- Retail
        E.db["general"]["itemLevel"]["itemLevelFont"] = "Exo2-Bold"
        E.db["general"]["itemLevel"]["itemLevelFontSize"] = 15
        E.db["general"]["itemLevel"]["totalLevelFont"] = "Exo2-Bold"
        E.db["general"]["itemLevel"]["totalLevelFontSize"] = 20
        E.db["general"]["altPowerBar"]["statusBarColor"]["b"] = 0.67450980392157
        E.db["general"]["altPowerBar"]["statusBarColor"]["g"] = 0.50588235294118
        E.db["general"]["altPowerBar"]["statusBarColor"]["r"] = 0.36862745098039
        E.db["general"]["altPowerBar"]["font"] = "Montserrat-Medium"
        E.db["general"]["altPowerBar"]["fontOutline"] = "NONE"
        E.db["general"]["altPowerBar"]["height"] = 25
        E.db["general"]["altPowerBar"]["width"] = 417
    end

    E.db["general"]["font"] = "Exo2-Bold"
    E.db["general"]["lootRoll"]["nameFont"] = "Exo2-Bold"
    E.db["general"]["fontSize"] = 14
    E.db["general"]["autoTrackReputation"] = true
    E.db["general"]["autoRepair"] = "PLAYER"
    E.db["general"]["minimap"]["size"] = 200
    E.db["general"]["minimap"]["locationFont"] = "Exo2-Bold"
    E.db["general"]["talkingHeadFrameBackdrop"] = true
    E.db["general"]["resurrectSound"] = true
    E.db["general"]["backdropfadecolor"]["a"] = 0.85000001192093
    E.db["general"]["backdropfadecolor"]["r"] = 0.18039215686275
    E.db["general"]["backdropfadecolor"]["g"] = 0.20392156862745
    E.db["general"]["backdropfadecolor"]["b"] = 0.25098039215686
    E.db["general"]["objectiveFrameHeight"] = 400
    E.db["general"]["backdropcolor"]["r"] = 0.23137254901961
    E.db["general"]["backdropcolor"]["g"] = 0.25882352941176
    E.db["general"]["backdropcolor"]["b"] = 0.32156862745098
    E.db["general"]["bordercolor"]["r"] = 0.23137254901961
    E.db["general"]["bordercolor"]["g"] = 0.25882352941176
    E.db["general"]["bordercolor"]["b"] = 0.32156862745098
    E.db["general"]["valuecolor"]["r"] = 0.53333333333333
    E.db["general"]["valuecolor"]["g"] = 0.75294117647059
    E.db["general"]["valuecolor"]["b"] = 0.8156862745098
    E.db["general"]["interruptAnnounce"] = "RAID"
    E.db["general"]["bottomPanel"] = false
    E.db["general"]["customGlow"]["style"] = "Action Button Glow"

    -- Player totembar
    E.db["general"]["totems"]["growthDirection"] = "HORIZONTAL"
    E.db["general"]["totems"]["size"] = 30
    E.db["general"]["totems"]["sortDirection"] = "DESCENDING"
    E.db["general"]["totems"]["spacing"] = 2
end
