local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

function NoobTacoUI:SetupGeneral()

  --	PrivateDB
  E.private["skins"]["parchmentRemoverEnable"] = true
  E.private["general"]["namefont"] = "Montserrat-Bold"
  E.private["general"]["dmgfont"] = "Montserrat-Bold"
  E.private["general"]["normTex"] = "ElvUI Norm"
  E.private["general"]["glossTex"] = "ElvUI Norm"

  if WOW_PROJECT_ID == WOW_PROJECT_MAINLINE then -- Retail
    E.db["general"]["totems"]["size"] = 30
    E.db["general"]["itemLevel"]["itemLevelFont"] = "Montserrat-Regular"
    E.db["general"]["altPowerBar"]["statusBarColor"]["b"] = 0.67450980392157
    E.db["general"]["altPowerBar"]["statusBarColor"]["g"] = 0.50588235294118
    E.db["general"]["altPowerBar"]["statusBarColor"]["r"] = 0.36862745098039
    E.db["general"]["altPowerBar"]["font"] = "Montserrat-Medium"
    E.db["general"]["altPowerBar"]["fontOutline"] = "NONE"
    E.db["general"]["altPowerBar"]["height"] = 25
    E.db["general"]["altPowerBar"]["width"] = 417
  end

  E.db["general"]["fontSize"] = 14
  E.db["general"]["autoTrackReputation"] = true
  E.db["general"]["autoRepair"] = "PLAYER"
  E.db["general"]["minimap"]["size"] = 200
  E.db["general"]["minimap"]["locationFont"] = "Montserrat-Bold"
  E.db["general"]["talkingHeadFrameBackdrop"] = true
  E.db["general"]["resurrectSound"] = true
  E.db["general"]["backdropfadecolor"]["a"] = 0.85000001192093
  E.db["general"]["backdropfadecolor"]["r"] = 0.18039215686275
  E.db["general"]["backdropfadecolor"]["g"] = 0.20392156862745
  E.db["general"]["backdropfadecolor"]["b"] = 0.25098039215686
  E.db["general"]["objectiveFrameHeight"] = 537
  E.db["general"]["backdropcolor"]["r"] = 0.23137254901961
  E.db["general"]["backdropcolor"]["g"] = 0.25882352941176
  E.db["general"]["backdropcolor"]["b"] = 0.32156862745098
  E.db["general"]["bordercolor"]["r"] = 0.23137254901961
  E.db["general"]["bordercolor"]["g"] = 0.25882352941176
  E.db["general"]["bordercolor"]["b"] = 0.32156862745098
  E.db["general"]["font"] = "Montserrat-Bold"
  E.db["general"]["valuecolor"]["r"] = 0.53333333333333
  E.db["general"]["valuecolor"]["g"] = 0.75294117647059
  E.db["general"]["valuecolor"]["b"] = 0.8156862745098
  E.db["general"]["interruptAnnounce"] = "RAID"
  E.db["general"]["bottomPanel"] = false

  -- Player totembar
  if WOW_PROJECT_ID == WOW_PROJECT_CLASSIC then -- Classic
    E.db["general"]["totems"]["size"] = 25
  end
  if WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC then -- TBCc
    E.db["general"]["totems"]["growthDirection"] = "HORIZONTAL"
    E.db["general"]["totems"]["size"] = 30
    E.db["general"]["totems"]["sortDirection"] = "DESCENDING"
  end
  if WOW_PROJECT_ID == WOW_PROJECT_MAINLINE then -- Retail
    E.db["general"]["totems"]["growthDirection"] = "HORIZONTAL"
    E.db["general"]["totems"]["size"] = 30
    E.db["general"]["totems"]["sortDirection"] = "DESCENDING"
  end
end