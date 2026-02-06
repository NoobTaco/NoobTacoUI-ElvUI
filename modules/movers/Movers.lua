local addonName, Engine = ...
local NoobTacoUIElv = Engine.NoobTacoUIElv
local E, L, V, P, G = Engine.E, Engine.L, Engine.V, Engine.P, Engine.G

function NoobTacoUIElv:SetupMovers()
    -- MOVERS -----------------------------------------------------------------
    -- PowerBarWidget for flight bar and more?
    E.db["movers"]["PowerBarContainerMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,80"

    -- Center Cluster of Actionbars.
    E.db["movers"]["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,30"
    E.db["movers"]["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,62"

    -- Right Fade bar
    E.db["movers"]["ElvAB_2"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-514,30"

    -- Right and Left Clusters
    E.db["movers"]["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,-285,30"
    E.db["movers"]["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,285,30"
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
    E.db["movers"]["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-226"
    E.db["movers"]["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-240"
    E.db["movers"]["QuestWatchFrameMover"] = "TOPRIGHT,UIParent,TOPRIGHT,-4,-240"
    E.db["movers"]["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,33,229"
    E.db["movers"]["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,232"
    E.db["movers"]["NB_LocationLiteMover"] = "TOP,ElvUIParent,TOP,0,0"
    E.db["movers"]["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4"
    E.db["movers"]["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-35"
    E.db["movers"]["ThreatBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-243"
    E.db["movers"]["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,4"
    E.db["movers"]["GMMover"] = "TOP,ElvUIParent,TOP,-346,-30"
    E.db["movers"]["LocationMover"] = "TOP,ElvUIParent,TOP,0,-1"
    E.db["movers"]["MirrorTimer3Mover"] = "TOP,ElvUIParent,TOP,0,-101"
    E.db["movers"]["MicrobarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,229"
    E.db["movers"]["OzCooldownsMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,215"
    E.db["movers"]["MirrorTimer2Mover"] = "TOP,ElvUIParent,TOP,0,-83"
    E.db["movers"]["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-113,-555"
    E.db["movers"]["iFilger_ItemCooldownsMover"] = "BOTTOM,ElvUIParent,BOTTOM,-121,456"
    E.db["movers"]["iFilger_BuffsMover"] = "BOTTOM,ElvUIParent,BOTTOM,-291,272"
    E.db["movers"]["AlertFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-530,-242"
    E.db["movers"]["BigButtonsFarmBar"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-638,-307"
    E.db["movers"]["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,127"
    E.db["movers"]["AddonCompartmentMover"] = "RIGHT,ElvUI_MinimapHolder,RIGHT,-5,10"
    E.db["movers"]["BossBannerMover"] = "TOP,ElvUIParent,TOP,0,-126"
    E.db["movers"]["EventToastMover"] = "TOP,ElvUIParent,TOP,0,-150"
    E.db["movers"]["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-2,-251"
    E.db["movers"]["LossControlMover"] = "BOTTOM,ElvUIParent,BOTTOM,-1,507"
    E.db["movers"]["PrivateAurasMover"] = "TOPRIGHT,ElvUI_MinimapHolder,BOTTOMLEFT,-10,-4"
    E.db["movers"]["PrivateRaidWarningMover"] = "TOP,RaidBossEmoteFrame,TOP,0,0"
    E.db["movers"]["QueueStatusMover"] = "BOTTOMRIGHT,ElvUI_MinimapHolder,BOTTOMRIGHT,-5,25"
    E.db["movers"]["VehicleLeaveButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,301"

    -- Player castbar
    E.db["movers"]["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,93"
    E.db["movers"]["ClassBarMover"] = "BOTTOM,UIParent,BOTTOM,0,283"
    E.db["movers"]["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,215"
    E.db["movers"]["AdditionalPowerMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,205"
    E.db["movers"]["ExperienceBarMover"] = "BOTTOM,UIParent,BOTTOM,0,96"
    E.db["movers"]["ShiftAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,505,30"
    E.db["movers"]["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,300,230"
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

    E.db["movers"]["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-299"
    E.db["movers"]["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-298"
    E.db["movers"]["ElvUF_FocusCastbarMover"] = "TOPLEFT,ElvUF_Focus,BOTTOMLEFT,0,-1"
    E.db["movers"]["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-300,485"
    E.db["movers"]["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-370"
    E.db["movers"]["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-305"

    -- Unitframe Movers from DPS/Tank Layout
    E.db["movers"]["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-240,158"
    E.db["movers"]["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-245,203"
    E.db["movers"]["PetExperienceBarMover"] = "BOTTOM,UIParent,BOTTOM,-245,191"
    E.db["movers"]["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-245,229"
    E.db["movers"]["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,245,203"
    E.db["movers"]["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,245,229"
    E.db["movers"]["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,245,203"

    -- Raid Frame Movers from DPS/Tank Layout
    E.db["movers"]["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,275"
    E.db["movers"]["ElvUF_Raid3Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,274"
    E.db["movers"]["ElvUF_Raid2Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,269"
    E.db["movers"]["ElvUF_Raid1Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,274"

    -- Totem tracker mover
    E.db["movers"]["TotemTrackerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-205,155"

    -- Bottom Data Text mover
    E.db["movers"]["DTPanelCenterMover"] = "BOTTOM,UIParent,BOTTOM,0,4"
end
