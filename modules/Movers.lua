local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

function NoobTacoUI:SetupMovers()
  -- MOVERS -----------------------------------------------------------------

  E.db["movers"]["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,15"

  -- Right Fade bar
  if WOW_PROJECT_ID == WOW_PROJECT_CLASSIC then -- Classic
      E.db["movers"]["ElvAB_2"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-505,4"
  end
  if WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC then -- TBCc
    E.db["movers"]["ElvAB_2"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-506,4"
  end
  if WOW_PROJECT_ID == WOW_PROJECT_MAINLINE then -- Retail
    E.db["movers"]["ElvAB_2"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-530,4"
  end

  -- Right and Left Clusters
  if WOW_PROJECT_ID == WOW_PROJECT_CLASSIC then -- Classic
      E.db["movers"]["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,-286,15"
      E.db["movers"]["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,286,15"
  end
  if WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC then -- TBCc
    E.db["movers"]["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,-280,15"
    E.db["movers"]["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,280,15"
  end
  if WOW_PROJECT_ID == WOW_PROJECT_MAINLINE then -- Retail
    E.db["movers"]["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,-278,15"
    E.db["movers"]["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,278,15"
  end

  E.db["movers"]["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,49"
  E.db["movers"]["ElvAB_8"] = "BOTTOM,ElvUIParent,BOTTOM,27,300"
  E.db["movers"]["ElvAB_9"] = "BOTTOM,ElvUIParent,BOTTOM,27,269"

  -- GENERAL MOVERS
  E.db["movers"]["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-224,-4"
  E.db["movers"]["GhostFrameMover"] = "TOP,ElvUIParent,TOP,0,-169"
  E.db["movers"]["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,350"
  E.db["movers"]["LootFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-530,-399"
  E.db["movers"]["ZoneAbility"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-453,373"
  E.db["movers"]["SocialMenuMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,213"
  E.db["movers"]["DurabilityFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,348"
  E.db["movers"]["VehicleSeatMover"] = "TOP,ElvUIParent,TOP,254,-5"
  E.db["movers"]["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,0,-65"
  E.db["movers"]["EasyBuff_Announce_Mover"] = "TOP,ElvUIParent,TOP,0,-255"
  E.db["movers"]["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-158"
  E.db["movers"]["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-228"
  E.db["movers"]["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-65,-257"
  E.db["movers"]["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,33,229"
  E.db["movers"]["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,232"
  E.db["movers"]["NB_LocationLiteMover"] = "TOP,ElvUIParent,TOP,0,0"
  E.db["movers"]["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4"
  E.db["movers"]["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-20"
  E.db["movers"]["ThreatBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-243"
  E.db["movers"]["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,4"
  E.db["movers"]["GMMover"] = "TOP,ElvUIParent,TOP,-346,-30"
  E.db["movers"]["LocationMover"] = "TOP,ElvUIParent,TOP,0,-1"
  E.db["movers"]["MirrorTimer3Mover"] = "TOP,ElvUIParent,TOP,0,-101"
  E.db["movers"]["MicrobarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,229"
  E.db["movers"]["OzCooldownsMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,425"
  E.db["movers"]["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,2"
  E.db["movers"]["MirrorTimer2Mover"] = "TOP,ElvUIParent,TOP,0,-83"
  E.db["movers"]["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-113,-555"
  E.db["movers"]["iFilger_ItemCooldownsMover"] = "BOTTOM,ElvUIParent,BOTTOM,-121,456"
  E.db["movers"]["iFilger_BuffsMover"] = "BOTTOM,ElvUIParent,BOTTOM,-291,272"
  E.db["movers"]["AlertFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-530,-242"
  E.db["movers"]["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,608,111"
  E.db["movers"]["BigButtonsFarmBar"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-638,-307"

  -- Player castbar
  if WOW_PROJECT_ID == WOW_PROJECT_CLASSIC then -- Classic
    E.db["movers"]["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,90"
  end
  if WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC then -- TBCc
    E.db["movers"]["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,85"
  end
  if WOW_PROJECT_ID == WOW_PROJECT_MAINLINE then -- Retail
    E.db["movers"]["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,90"
  end

  E.db["movers"]["BigButtonsSeedBarMover"] = "TOP,ElvUIParent,TOP,0,-300"
  E.db["movers"]["ElvUIBankMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,230"
  E.db["movers"]["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,0,-181"
  E.db["movers"]["QuestTimerFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-523,-304"
  E.db["movers"]["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,468,-249"
  E.db["movers"]["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-510,-4"
  E.db["movers"]["UIErrorsFrameMover"] = "TOP,ElvUIParent,TOP,0,-150"
  E.db["movers"]["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,264"
  E.db["movers"]["AzeriteBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,577,4"
  E.db["movers"]["TimeManagerFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-247"
  E.db["movers"]["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-224,-150"
  E.db["movers"]["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-4"
  E.db["movers"]["PetAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,229"
  E.db["movers"]["RaidUtility_Mover"] = "TOPLEFT,ElvUIParent,TOPLEFT,459,-4"
  E.db["movers"]["RaidMarkerBarAnchor"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,223"
  E.db["movers"]["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,1,739"
end