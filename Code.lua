--Don't worry about this
local addon, ns = ...
local Version = GetAddOnMetadata(addon, "Version")

--Cache Lua / WoW API
local format = string.format
local GetCVarBool = GetCVarBool
local ReloadUI = ReloadUI
local StopMusic = StopMusic

-- These are things we do not cache
-- GLOBALS: PluginInstallStepComplete, PluginInstallFrame

--Change this line and use a unique name for your plugin.
local MyPluginName = "|cFF16C3F2NoobTaco|r|cFFFFFFFFUI|r"

--Create references to ElvUI internals
local E, L, V, P, G = unpack(ElvUI)

--Create reference to LibElvUIPlugin
local EP = LibStub("LibElvUIPlugin-1.0")

--Create a new ElvUI module so ElvUI can handle initialization when ready
local mod = E:NewModule(MyPluginName, "AceHook-3.0", "AceEvent-3.0", "AceTimer-3.0");

--This function will hold your layout settings
local function SetupLayout(layout)
	--[[
	--	PUT YOUR EXPORTED PROFILE/SETTINGS BELOW HERE
	--]]

	--LAYOUT GOES HERE

-- CUSTOM TEXTS
	-- Player Unit Frame
	if not E.db.unitframe.units.player.customTexts then E.db.unitframe.units.player.customTexts = {} end
	if E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerHealth"] == nil then
		E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerHealth"] = {}
	end
	if E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerName"] == nil then
		E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerName"] = {}
	end
	if E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerPower"] == nil then
		E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerPower"] = {}
	end
	
	-- -- Party Unit Frames
	if not E.db.unitframe.units.party.customTexts then E.db.unitframe.units.party.customTexts = {} end
	if E.db["unitframe"]["units"]["party"]["customTexts"]["PartyHealth"] == nil then
		E.db["unitframe"]["units"]["party"]["customTexts"]["PartyHealth"] = {}
	end
	if E.db["unitframe"]["units"]["party"]["customTexts"]["PartyPower"] == nil then
		E.db["unitframe"]["units"]["party"]["customTexts"]["PartyPower"] = {}
	end
	if E.db["unitframe"]["units"]["party"]["customTexts"]["Partyname"] == nil then
		E.db["unitframe"]["units"]["party"]["customTexts"]["Partyname"] = {}
	end

	-- -- Pet Unit Frame
	if not E.db.unitframe.units.pet.customTexts then E.db.unitframe.units.pet.customTexts = {} end
	if E.db["unitframe"]["units"]["pet"]["customTexts"]["Pet Health"] == nil then
		E.db["unitframe"]["units"]["pet"]["customTexts"]["Pet Health"] = {}
	end

	-- -- Fix Movers ??
	if E.db["movers"] == nil then E.db["movers"] = {} end

	-- Target Unit Frame
	if not E.db.unitframe.units.target.customTexts then E.db.unitframe.units.target.customTexts = {} end
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
	if not E.db.unitframe.units.targettarget.customTexts then E.db.unitframe.units.targettarget.customTexts = {} end
	if E.db["unitframe"]["units"]["targettarget"]["customTexts"]["TargetTargetName"] == nil then
		E.db["unitframe"]["units"]["targettarget"]["customTexts"]["TargetTargetName"] = {}
	end
	
	-- Extra Options not Exported by base profile
	E.db["unitframe"]["units"]["player"]["infoPanel"]["enable"] = false
	E.db["unitframe"]["units"]["target"]["infoPanel"]["enable"] = false
	E.db["unitframe"]["units"]["target"]["orientation"] = "RIGHT"
	
	--	PrivateDB - 
	E.private["skins"]["parchmentRemoverEnable"] = true
	E.private["general"]["namefont"] = "Montserrat-Bold"
	E.private["general"]["dmgfont"] = "Montserrat-Bold"

	-- ################################################
	-- Main Profile Import
	-- ################################################

	E.db["databars"]["threat"]["enable"] = false
	E.db["databars"]["threat"]["font"] = "Montserrat-Bold"
	E.db["databars"]["threat"]["height"] = 12
	E.db["databars"]["threat"]["width"] = 200
	E.db["databars"]["experience"]["textFormat"] = "CURREM"
	E.db["databars"]["experience"]["hideAtMaxLevel"] = false
	E.db["databars"]["experience"]["font"] = "Montserrat-Bold"
	E.db["databars"]["experience"]["hideInCombat"] = true
	E.db["databars"]["experience"]["showBubbles"] = true
	E.db["databars"]["experience"]["width"] = 415
	E.db["databars"]["honor"]["enable"] = false
	E.db["databars"]["reputation"]["font"] = "Montserrat-Regular"
	E.db["databars"]["reputation"]["height"] = 12
	E.db["databars"]["reputation"]["hideInCombat"] = true
	E.db["databars"]["reputation"]["enable"] = true
	E.db["databars"]["reputation"]["width"] = 200
	E.db["databars"]["colors"]["experience"]["a"] = 1
	E.db["databars"]["colors"]["experience"]["r"] = 0.14901960784314
	E.db["databars"]["colors"]["experience"]["g"] = 0.49411764705882
	E.db["databars"]["colors"]["experience"]["b"] = 0.83529411764706
	E.db["databars"]["colors"]["quest"]["a"] = 0.99000000022352
	E.db["databars"]["colors"]["quest"]["r"] = 0.27450980392157
	E.db["databars"]["colors"]["quest"]["g"] = 0.74509803921569
	E.db["databars"]["colors"]["quest"]["b"] = 0.33725490196078
	E.db["databars"]["colors"]["rested"]["a"] = 1
	E.db["databars"]["colors"]["rested"]["r"] = 0.70588235294118
	E.db["databars"]["colors"]["rested"]["g"] = 0.29803921568627
	E.db["databars"]["colors"]["rested"]["b"] = 0.56078431372549
	E.db["databars"]["azerite"]["orientation"] = "VERTICAL"
	E.db["databars"]["azerite"]["height"] = 247
	E.db["databars"]["azerite"]["enable"] = false
	E.db["databars"]["azerite"]["width"] = 12
	E.db["general"]["totems"]["size"] = 30
	E.db["general"]["fontSize"] = 14
	E.db["general"]["autoTrackReputation"] = true
	E.db["general"]["autoRepair"] = "PLAYER"
	E.db["general"]["minimap"]["size"] = 200
	E.db["general"]["minimap"]["locationFont"] = "Montserrat-Bold"
	E.db["general"]["talkingHeadFrameBackdrop"] = true
	E.db["general"]["resurrectSound"] = true
	E.db["general"]["backdropfadecolor"]["a"] = 1
	E.db["general"]["backdropfadecolor"]["r"] = 0.18039215686275
	E.db["general"]["backdropfadecolor"]["g"] = 0.20392156862745
	E.db["general"]["backdropfadecolor"]["b"] = 0.25098039215686
	E.db["general"]["objectiveFrameHeight"] = 537
	E.db["general"]["itemLevel"]["itemLevelFont"] = "Montserrat-Regular"
	E.db["general"]["backdropcolor"]["r"] = 0.23137254901961
	E.db["general"]["backdropcolor"]["g"] = 0.25882352941176
	E.db["general"]["backdropcolor"]["b"] = 0.32156862745098
	E.db["general"]["bordercolor"]["r"] = 0.23137254901961
	E.db["general"]["bordercolor"]["g"] = 0.25882352941176
	E.db["general"]["bordercolor"]["b"] = 0.32156862745098
	E.db["general"]["font"] = "Montserrat-Bold"
	E.db["general"]["altPowerBar"]["statusBarColor"]["b"] = 0.67450980392157
	E.db["general"]["altPowerBar"]["statusBarColor"]["g"] = 0.50588235294118
	E.db["general"]["altPowerBar"]["statusBarColor"]["r"] = 0.36862745098039
	E.db["general"]["altPowerBar"]["font"] = "Montserrat-Medium"
	E.db["general"]["altPowerBar"]["fontOutline"] = "NONE"
	E.db["general"]["valuecolor"]["r"] = 0.53333333333333
	E.db["general"]["valuecolor"]["g"] = 0.75294117647059
	E.db["general"]["valuecolor"]["b"] = 0.8156862745098
	E.db["general"]["interruptAnnounce"] = "RAID"
	E.db["general"]["bottomPanel"] = false
	E.db["movers"]["ElvAB_8"] = "BOTTOM,ElvUIParent,BOTTOM,27,300"
	E.db["movers"]["RaidMarkerBarAnchor"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,223"
	E.db["movers"]["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-224,-4"
	E.db["movers"]["GhostFrameMover"] = "TOP,ElvUIParent,TOP,0,-169"
	E.db["movers"]["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,304,441"
	E.db["movers"]["LootFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-530,-399"
	E.db["movers"]["ZoneAbility"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-453,373"
	E.db["movers"]["SocialMenuMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,213"
	E.db["movers"]["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,1,739"
	E.db["movers"]["DurabilityFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,348"
	E.db["movers"]["VehicleSeatMover"] = "TOP,ElvUIParent,TOP,254,-5"
	E.db["movers"]["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,240,158"
	E.db["movers"]["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,0,-99"
	E.db["movers"]["EasyBuff_Announce_Mover"] = "TOP,ElvUIParent,TOP,0,-255"
	E.db["movers"]["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-158"
	E.db["movers"]["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,199"
	E.db["movers"]["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-228"
	E.db["movers"]["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-49,-257"
	E.db["movers"]["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,33,229"
	E.db["movers"]["ShiftAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,576,4"
	E.db["movers"]["RaidUtility_Mover"] = "TOPLEFT,ElvUIParent,TOPLEFT,459,-4"
	E.db["movers"]["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,240,253"
	E.db["movers"]["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-68,249"
	E.db["movers"]["NB_LocationLiteMover"] = "TOP,ElvUIParent,TOP,0,0"
	E.db["movers"]["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4"
	E.db["movers"]["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-370"
	E.db["movers"]["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-186"
	E.db["movers"]["ThreatBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-243"
	E.db["movers"]["PetAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,297,229"
	E.db["movers"]["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,285"
	E.db["movers"]["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,4"
	E.db["movers"]["GMMover"] = "TOP,ElvUIParent,TOP,-346,-30"
	E.db["movers"]["LocationMover"] = "TOP,ElvUIParent,TOP,0,-1"
	E.db["movers"]["MirrorTimer3Mover"] = "TOP,ElvUIParent,TOP,0,-132"
	E.db["movers"]["ElvUF_FocusMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-536,-530"
	E.db["movers"]["MicrobarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,229"
	E.db["movers"]["OzCooldownsMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,425"
	E.db["movers"]["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,1"
	E.db["movers"]["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,240,192"
	E.db["movers"]["MirrorTimer2Mover"] = "TOP,ElvUIParent,TOP,0,-113"
	E.db["movers"]["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-113,-555"
	E.db["movers"]["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,287"
	E.db["movers"]["iFilger_ItemCooldownsMover"] = "BOTTOM,ElvUIParent,BOTTOM,-121,456"
	E.db["movers"]["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-240,192"
	E.db["movers"]["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,12"
	E.db["movers"]["ElvAB_9"] = "BOTTOM,ElvUIParent,BOTTOM,27,269"
	E.db["movers"]["iFilger_BuffsMover"] = "BOTTOM,ElvUIParent,BOTTOM,-291,272"
	E.db["movers"]["AlertFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-530,-242"
	E.db["movers"]["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,608,111"
	E.db["movers"]["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-288,-215"
	E.db["movers"]["BigButtonsFarmBar"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-638,-307"
	E.db["movers"]["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,0,48"
	E.db["movers"]["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-295,20"
	E.db["movers"]["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,87"
	E.db["movers"]["BigButtonsSeedBarMover"] = "TOP,ElvUIParent,TOP,0,-300"
	E.db["movers"]["ElvUIBankMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,230"
	E.db["movers"]["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,0,-181"
	E.db["movers"]["QuestTimerFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-523,-304"
	E.db["movers"]["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,468,-249"
	E.db["movers"]["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-510,-4"
	E.db["movers"]["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,295,20"
	E.db["movers"]["UIErrorsFrameMover"] = "TOP,ElvUIParent,TOP,0,-150"
	E.db["movers"]["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,264"
	E.db["movers"]["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-305"
	E.db["movers"]["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-289,-227"
	E.db["movers"]["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-240,158"
	E.db["movers"]["AzeriteBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,577,4"
	E.db["movers"]["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,287"
	E.db["movers"]["TimeManagerFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-247"
	E.db["movers"]["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-224,-150"
	E.db["movers"]["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-4"
	E.db["tooltip"]["textFontSize"] = 14
	E.db["tooltip"]["font"] = "Montserrat-Bold"
	E.db["tooltip"]["healthBar"]["height"] = 10
	E.db["tooltip"]["healthBar"]["font"] = "Montserrat-Bold"
	E.db["tooltip"]["healthBar"]["fontOutline"] = "NONE"
	E.db["tooltip"]["smallTextFontSize"] = 14
	E.db["tooltip"]["colorAlpha"] = 1
	E.db["tooltip"]["headerFontSize"] = 14
	E.db["auras"]["font"] = "Montserrat-Bold"
	E.db["auras"]["cooldown"]["expiringColor"]["b"] = 0.41176470588235
	E.db["auras"]["cooldown"]["expiringColor"]["g"] = 0.38039215686275
	E.db["auras"]["cooldown"]["expiringColor"]["r"] = 0.74901960784314
	E.db["auras"]["buffs"]["countFontSize"] = 14
	E.db["auras"]["buffs"]["durationFontSize"] = 14
	E.db["auras"]["debuffs"]["countFontSize"] = 14
	E.db["auras"]["debuffs"]["durationFontSize"] = 14
	E.db["v11NamePlateReset"] = true
	E.db["unitframe"]["targetSound"] = true
	E.db["unitframe"]["units"]["player"]["debuffs"]["anchorPoint"] = "TOPRIGHT"
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
	E.db["unitframe"]["units"]["player"]["CombatIcon"]["xOffset"] = -70
	E.db["unitframe"]["units"]["player"]["CombatIcon"]["size"] = 60
	E.db["unitframe"]["units"]["player"]["CombatIcon"]["yOffset"] = 19
	E.db["unitframe"]["units"]["player"]["aurabar"]["enable"] = false
	E.db["unitframe"]["units"]["player"]["RestIcon"]["texture"] = "RESTING"
	E.db["unitframe"]["units"]["player"]["RestIcon"]["xOffset"] = 4
	E.db["unitframe"]["units"]["player"]["RestIcon"]["size"] = 49
	E.db["unitframe"]["units"]["player"]["RestIcon"]["yOffset"] = 2
	E.db["unitframe"]["units"]["player"]["classbar"]["autoHide"] = true
	E.db["unitframe"]["units"]["player"]["power"]["attachTextTo"] = "Power"
	E.db["unitframe"]["units"]["player"]["power"]["height"] = 20
	E.db["unitframe"]["units"]["player"]["power"]["text_format"] = ""
	E.db["unitframe"]["units"]["player"]["power"]["xOffset"] = -208
	E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerName"]["attachTextTo"] = "Frame"
	E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerName"]["xOffset"] = 5
	E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerName"]["text_format"] = "[name:medium] [difficultycolor] [level] [shortclassification]"
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
	E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerPower"]["xOffset"] = 5
	E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerPower"]["text_format"] = "[power:current]"
	E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerPower"]["yOffset"] = 0
	E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerPower"]["font"] = "Montserrat-Medium"
	E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerPower"]["justifyH"] = "LEFT"
	E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerPower"]["fontOutline"] = "NONE"
	E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerPower"]["enable"] = true
	E.db["unitframe"]["units"]["player"]["customTexts"]["PlayerPower"]["size"] = 13
	E.db["unitframe"]["units"]["player"]["width"] = 200
	E.db["unitframe"]["units"]["player"]["castbar"]["height"] = 35
	E.db["unitframe"]["units"]["player"]["castbar"]["width"] = 410
	E.db["unitframe"]["units"]["player"]["name"]["attachTextTo"] = "Frame"
	E.db["unitframe"]["units"]["player"]["name"]["xOffset"] = 5
	E.db["unitframe"]["units"]["player"]["name"]["position"] = "BOTTOM"
	E.db["unitframe"]["units"]["player"]["height"] = 60
	E.db["unitframe"]["units"]["player"]["buffs"]["anchorPoint"] = "TOPRIGHT"
	E.db["unitframe"]["units"]["player"]["pvpIcon"]["anchorPoint"] = "TOPLEFT"
	E.db["unitframe"]["units"]["player"]["pvpIcon"]["enable"] = true
	E.db["unitframe"]["units"]["player"]["pvpIcon"]["scale"] = 1.5
	E.db["unitframe"]["units"]["player"]["pvpIcon"]["xOffset"] = -75
	E.db["unitframe"]["units"]["player"]["pvpIcon"]["yOffset"] = 27
	E.db["unitframe"]["units"]["pet"]["portrait"]["overlay"] = true
	E.db["unitframe"]["units"]["pet"]["castbar"]["width"] = 200
	E.db["unitframe"]["units"]["pet"]["customTexts"]["Pet Health"]["attachTextTo"] = "Frame"
	E.db["unitframe"]["units"]["pet"]["customTexts"]["Pet Health"]["xOffset"] = 131
	E.db["unitframe"]["units"]["pet"]["customTexts"]["Pet Health"]["text_format"] = ""
	E.db["unitframe"]["units"]["pet"]["customTexts"]["Pet Health"]["yOffset"] = 0
	E.db["unitframe"]["units"]["pet"]["customTexts"]["Pet Health"]["font"] = "2002"
	E.db["unitframe"]["units"]["pet"]["customTexts"]["Pet Health"]["justifyH"] = "LEFT"
	E.db["unitframe"]["units"]["pet"]["customTexts"]["Pet Health"]["fontOutline"] = "THICKOUTLINE"
	E.db["unitframe"]["units"]["pet"]["customTexts"]["Pet Health"]["enable"] = true
	E.db["unitframe"]["units"]["pet"]["customTexts"]["Pet Health"]["size"] = 24
	E.db["unitframe"]["units"]["pet"]["width"] = 200
	E.db["unitframe"]["units"]["pet"]["name"]["text_format"] = "[name:medium]"
	E.db["unitframe"]["units"]["pet"]["height"] = 30
	E.db["unitframe"]["units"]["party"]["debuffs"]["sizeOverride"] = 30
	E.db["unitframe"]["units"]["party"]["debuffs"]["countFont"] = "Montserrat-Bold"
	E.db["unitframe"]["units"]["party"]["debuffs"]["yOffset"] = 4
	E.db["unitframe"]["units"]["party"]["rdebuffs"]["font"] = "Montserrat-Bold"
	E.db["unitframe"]["units"]["party"]["buffIndicator"]["size"] = 15
	E.db["unitframe"]["units"]["party"]["orientation"] = "MIDDLE"
	E.db["unitframe"]["units"]["party"]["roleIcon"]["size"] = 23
	E.db["unitframe"]["units"]["party"]["readycheckIcon"]["size"] = 20
	E.db["unitframe"]["units"]["party"]["power"]["height"] = 10
	E.db["unitframe"]["units"]["party"]["power"]["text_format"] = ""
	E.db["unitframe"]["units"]["party"]["customTexts"]["PartyHealth"]["attachTextTo"] = "Health"
	E.db["unitframe"]["units"]["party"]["customTexts"]["PartyHealth"]["enable"] = true
	E.db["unitframe"]["units"]["party"]["customTexts"]["PartyHealth"]["text_format"] = "[health:current-percent]"
	E.db["unitframe"]["units"]["party"]["customTexts"]["PartyHealth"]["yOffset"] = -25
	E.db["unitframe"]["units"]["party"]["customTexts"]["PartyHealth"]["font"] = "Montserrat-Bold"
	E.db["unitframe"]["units"]["party"]["customTexts"]["PartyHealth"]["justifyH"] = "LEFT"
	E.db["unitframe"]["units"]["party"]["customTexts"]["PartyHealth"]["fontOutline"] = "NONE"
	E.db["unitframe"]["units"]["party"]["customTexts"]["PartyHealth"]["xOffset"] = 5
	E.db["unitframe"]["units"]["party"]["customTexts"]["PartyHealth"]["size"] = 15
	E.db["unitframe"]["units"]["party"]["customTexts"]["Partyname"]["attachTextTo"] = "Health"
	E.db["unitframe"]["units"]["party"]["customTexts"]["Partyname"]["enable"] = true
	E.db["unitframe"]["units"]["party"]["customTexts"]["Partyname"]["text_format"] = "[name:medium] [difficultycolor][smartlevel]"
	E.db["unitframe"]["units"]["party"]["customTexts"]["Partyname"]["yOffset"] = 0
	E.db["unitframe"]["units"]["party"]["customTexts"]["Partyname"]["font"] = "Montserrat-Black"
	E.db["unitframe"]["units"]["party"]["customTexts"]["Partyname"]["justifyH"] = "CENTER"
	E.db["unitframe"]["units"]["party"]["customTexts"]["Partyname"]["fontOutline"] = "NONE"
	E.db["unitframe"]["units"]["party"]["customTexts"]["Partyname"]["xOffset"] = 0
	E.db["unitframe"]["units"]["party"]["customTexts"]["Partyname"]["size"] = 15
	E.db["unitframe"]["units"]["party"]["customTexts"]["PartyPower"]["attachTextTo"] = "Health"
	E.db["unitframe"]["units"]["party"]["customTexts"]["PartyPower"]["enable"] = true
	E.db["unitframe"]["units"]["party"]["customTexts"]["PartyPower"]["text_format"] = "[powercolor][power:current]"
	E.db["unitframe"]["units"]["party"]["customTexts"]["PartyPower"]["yOffset"] = -25
	E.db["unitframe"]["units"]["party"]["customTexts"]["PartyPower"]["font"] = "PROTOTYPE"
	E.db["unitframe"]["units"]["party"]["customTexts"]["PartyPower"]["justifyH"] = "RIGHT"
	E.db["unitframe"]["units"]["party"]["customTexts"]["PartyPower"]["fontOutline"] = "NONE"
	E.db["unitframe"]["units"]["party"]["customTexts"]["PartyPower"]["xOffset"] = 0
	E.db["unitframe"]["units"]["party"]["customTexts"]["PartyPower"]["size"] = 13
	E.db["unitframe"]["units"]["party"]["width"] = 125
	E.db["unitframe"]["units"]["party"]["name"]["text_format"] = ""
	E.db["unitframe"]["units"]["party"]["health"]["text_format"] = ""
	E.db["unitframe"]["units"]["party"]["height"] = 70
	E.db["unitframe"]["units"]["raid40"]["rdebuffs"]["font"] = "Montserrat-Bold"
	E.db["unitframe"]["units"]["raid40"]["roleIcon"]["enable"] = true
	E.db["unitframe"]["units"]["raid40"]["width"] = 70
	E.db["unitframe"]["units"]["raid40"]["height"] = 32
	E.db["unitframe"]["units"]["target"]["debuffs"]["numrows"] = 2
	E.db["unitframe"]["units"]["target"]["debuffs"]["countFont"] = "Montserrat-Bold"
	E.db["unitframe"]["units"]["target"]["debuffs"]["attachTo"] = "HEALTH"
	E.db["unitframe"]["units"]["target"]["debuffs"]["maxDuration"] = 0
	E.db["unitframe"]["units"]["target"]["debuffs"]["anchorPoint"] = "TOPLEFT"
	E.db["unitframe"]["units"]["target"]["debuffs"]["yOffset"] = 30
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
	E.db["unitframe"]["units"]["target"]["customTexts"]["TargetName"]["text_format"] = "[name:medium]  [shortclassification]"
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
	E.db["unitframe"]["units"]["target"]["castbar"]["height"] = 20
	E.db["unitframe"]["units"]["target"]["castbar"]["width"] = 200
	E.db["unitframe"]["units"]["target"]["height"] = 60
	E.db["unitframe"]["units"]["target"]["buffs"]["anchorPoint"] = "BOTTOMLEFT"
	E.db["unitframe"]["units"]["target"]["buffs"]["countFont"] = "Montserrat-Bold"
	E.db["unitframe"]["units"]["target"]["buffs"]["attachTo"] = "DEBUFFS"
	E.db["unitframe"]["units"]["target"]["buffs"]["yOffset"] = 16
	E.db["unitframe"]["units"]["target"]["name"]["attachTextTo"] = "Frame"
	E.db["unitframe"]["units"]["target"]["name"]["position"] = "BOTTOM"
	E.db["unitframe"]["units"]["target"]["name"]["xOffset"] = 5
	E.db["unitframe"]["units"]["target"]["name"]["text_format"] = ""
	E.db["unitframe"]["units"]["target"]["name"]["yOffset"] = -85
	E.db["unitframe"]["units"]["raid"]["rdebuffs"]["font"] = "Montserrat-Bold"
	E.db["unitframe"]["units"]["raid"]["growthDirection"] = "RIGHT_UP"
	E.db["unitframe"]["units"]["raid"]["buffIndicator"]["size"] = 10
	E.db["unitframe"]["units"]["raid"]["width"] = 100
	E.db["unitframe"]["units"]["raid"]["numGroups"] = 6
	E.db["unitframe"]["units"]["raid"]["height"] = 50
	E.db["unitframe"]["units"]["raid"]["verticalSpacing"] = -1
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
	E.db["unitframe"]["units"]["targettarget"]["name"]["text_format"] = "[name:medium] [difficultycolor][smartlevel] [shortclassification]"
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
	E.db["unitframe"]["fontSize"] = 13
	E.db["unitframe"]["cooldown"]["expiringColor"]["b"] = 0.41176470588235
	E.db["unitframe"]["cooldown"]["expiringColor"]["g"] = 0.38039215686275
	E.db["unitframe"]["cooldown"]["expiringColor"]["r"] = 0.74901960784314
	E.db["datatexts"]["font"] = "Montserrat-Bold"
	E.db["datatexts"]["panels"]["RightMiniPanel"] = "Bags"
	E.db["datatexts"]["panels"]["LeftCoordDtPanel"] = "Coords"
	E.db["datatexts"]["panels"]["RightCoordDtPanel"] = "Broker_RunSpeed"
	E.db["datatexts"]["panels"]["LeftChatDataPanel"][3] = "Item Level"
	E.db["datatexts"]["panels"]["LeftChatDataPanel"]["right"] = "Mana Regen"
	E.db["datatexts"]["panels"]["LeftChatDataPanel"]["left"] = "Broker_RunSpeed"
	E.db["datatexts"]["fontSize"] = 14
	E.db["actionbar"]["bar3"]["enabled"] = true
	E.db["actionbar"]["bar3"]["buttonsPerRow"] = 12
	E.db["actionbar"]["bar3"]["backdrop"] = true
	E.db["actionbar"]["bar3"]["buttons"] = 12
	E.db["actionbar"]["bar6"]["visibility"] = "[overridebar] hide; [petbattle] hide; show"
	E.db["actionbar"]["fontColor"]["r"] = 0.68235294117647
	E.db["actionbar"]["fontColor"]["g"] = 0.68235294117647
	E.db["actionbar"]["fontColor"]["b"] = 0.68235294117647
	E.db["actionbar"]["flashAnimation"] = true
	E.db["actionbar"]["fontOutline"] = "NONE"
	E.db["actionbar"]["noRangeColor"]["r"] = 0.74901960784314
	E.db["actionbar"]["noRangeColor"]["g"] = 0.38039215686275
	E.db["actionbar"]["noRangeColor"]["b"] = 0.4156862745098
	E.db["actionbar"]["notUsableColor"]["r"] = 0.26274509803922
	E.db["actionbar"]["notUsableColor"]["g"] = 0.29803921568627
	E.db["actionbar"]["notUsableColor"]["b"] = 0.36862745098039
	E.db["actionbar"]["microbar"]["enabled"] = true
	E.db["actionbar"]["microbar"]["mouseover"] = true
	E.db["actionbar"]["font"] = "Montserrat-Bold"
	E.db["actionbar"]["noPowerColor"]["r"] = 0.36862745098039
	E.db["actionbar"]["noPowerColor"]["g"] = 0.56862745098039
	E.db["actionbar"]["noPowerColor"]["b"] = 0.67450980392157
	E.db["actionbar"]["bar2"]["enabled"] = true
	E.db["actionbar"]["bar2"]["inheritGlobalFade"] = true
	E.db["actionbar"]["bar2"]["buttonsPerRow"] = 6
	E.db["actionbar"]["bar2"]["backdrop"] = true
	E.db["actionbar"]["bar2"]["buttonsize"] = 25
	E.db["actionbar"]["bar1"]["backdrop"] = true
	E.db["actionbar"]["bar5"]["enabled"] = true
	E.db["actionbar"]["bar5"]["inheritGlobalFade"] = true
	E.db["actionbar"]["bar5"]["buttons"] = 12
	E.db["actionbar"]["bar5"]["backdrop"] = true
	E.db["actionbar"]["bar5"]["buttonsize"] = 25
	E.db["actionbar"]["usableColor"]["r"] = 0.92549019607843
	E.db["actionbar"]["usableColor"]["g"] = 0.93725490196078
	E.db["actionbar"]["usableColor"]["b"] = 0.95686274509804
	E.db["actionbar"]["transparent"] = true
	E.db["actionbar"]["addNewSpells"] = true
	E.db["actionbar"]["stanceBar"]["buttonsize"] = 30
	E.db["actionbar"]["stanceBar"]["buttonsPerRow"] = 1
	E.db["actionbar"]["barPet"]["buttonsPerRow"] = 10
	E.db["actionbar"]["barPet"]["buttonsize"] = 25
	E.db["actionbar"]["barPet"]["point"] = "TOPLEFT"
	E.db["actionbar"]["bar4"]["enabled"] = false
	E.db["nameplates"]["threat"]["indicator"] = true
	E.db["nameplates"]["units"]["PLAYER"]["debuffs"]["countFontOutline"] = "NONE"
	E.db["nameplates"]["units"]["PLAYER"]["debuffs"]["priority"] = "Blacklist,Dispellable,blockNoDuration,Personal,Boss,CCDebuffs"
	E.db["nameplates"]["units"]["PLAYER"]["debuffs"]["countFont"] = "Montserrat-SemiBold"
	E.db["nameplates"]["units"]["PLAYER"]["debuffs"]["size"] = 40
	E.db["nameplates"]["units"]["PLAYER"]["castbar"]["iconOffsetX"] = 5
	E.db["nameplates"]["units"]["PLAYER"]["castbar"]["font"] = "Montserrat-SemiBold"
	E.db["nameplates"]["units"]["PLAYER"]["castbar"]["height"] = 12
	E.db["nameplates"]["units"]["PLAYER"]["castbar"]["iconSize"] = 25
	E.db["nameplates"]["units"]["PLAYER"]["raidTargetIndicator"]["size"] = 30
	E.db["nameplates"]["units"]["PLAYER"]["buffs"]["maxDuration"] = 0
	E.db["nameplates"]["units"]["PLAYER"]["buffs"]["priority"] = "Blacklist,blockNoDuration,Personal,TurtleBuffs"
	E.db["nameplates"]["units"]["PLAYER"]["buffs"]["countFont"] = "Montserrat-SemiBold"
	E.db["nameplates"]["units"]["PLAYER"]["buffs"]["countFontOutline"] = "NONE"
	E.db["nameplates"]["units"]["PLAYER"]["health"]["height"] = 16
	E.db["nameplates"]["units"]["PLAYER"]["health"]["text"]["font"] = "Montserrat-Bold"
	E.db["nameplates"]["units"]["PLAYER"]["health"]["text"]["position"] = "TOPRIGHT"
	E.db["nameplates"]["units"]["PLAYER"]["health"]["text"]["fontOutline"] = "NONE"
	E.db["nameplates"]["units"]["PLAYER"]["health"]["text"]["parent"] = "Health"
	E.db["nameplates"]["units"]["PLAYER"]["health"]["text"]["format"] = "[health:current-percent-nostatus]"
	E.db["nameplates"]["units"]["PLAYER"]["health"]["text"]["fontSize"] = 10
	E.db["nameplates"]["units"]["PLAYER"]["health"]["text"]["yOffset"] = -14
	E.db["nameplates"]["units"]["PLAYER"]["power"]["displayAltPower"] = true
	E.db["nameplates"]["units"]["PLAYER"]["power"]["height"] = 5
	E.db["nameplates"]["units"]["PLAYER"]["power"]["hideWhenEmpty"] = true
	E.db["nameplates"]["units"]["PLAYER"]["power"]["yOffset"] = -11
	E.db["nameplates"]["units"]["PLAYER"]["title"]["format"] = "[guild]"
	E.db["nameplates"]["units"]["PLAYER"]["name"]["font"] = "Montserrat-Bold"
	E.db["nameplates"]["units"]["PLAYER"]["name"]["enable"] = true
	E.db["nameplates"]["units"]["PLAYER"]["name"]["format"] = "[namecolor][name:abbrev:short]"
	E.db["nameplates"]["units"]["PLAYER"]["name"]["fontSize"] = 14
	E.db["nameplates"]["units"]["PLAYER"]["name"]["yOffset"] = 0
	E.db["nameplates"]["units"]["PLAYER"]["level"]["enable"] = true
	E.db["nameplates"]["units"]["PLAYER"]["level"]["fontSize"] = 12
	E.db["nameplates"]["units"]["PLAYER"]["level"]["font"] = "Montserrat-Bold"
	E.db["nameplates"]["units"]["PLAYER"]["level"]["yOffset"] = 0
	E.db["nameplates"]["units"]["TARGET"]["glowStyle"] = "style7"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["countFontOutline"] = "NONE"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["priority"] = "Blacklist,Dispellable,blockNoDuration,Personal,Boss,CCDebuffs"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["countFont"] = "Montserrat-SemiBold"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["size"] = 40
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["power"]["displayAltPower"] = true
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
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["buffs"]["countFont"] = "Montserrat-SemiBold"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["height"] = 16
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["text"]["font"] = "Montserrat-Bold"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["text"]["fontOutline"] = "NONE"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["text"]["position"] = "TOPRIGHT"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["text"]["parent"] = "Health"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["text"]["format"] = "[health:current-percent-nostatus]"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["text"]["fontSize"] = 10
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["text"]["yOffset"] = -14
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["name"]["format"] = "[namecolor][name:abbrev:short]"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["name"]["fontSize"] = 14
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["name"]["font"] = "Montserrat-Bold"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["name"]["yOffset"] = 0
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["title"]["format"] = "[guild]"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["level"]["format"] = "[difficultycolor][level]"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["level"]["fontSize"] = 12
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["level"]["font"] = "Montserrat-Bold"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["level"]["yOffset"] = 0
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["questIcon"]["size"] = 30
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["questIcon"]["font"] = "Montserrat-Bold"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["questIcon"]["position"] = "CENTER"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["questIcon"]["yOffset"] = 35
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["font"] = "Montserrat-SemiBold"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["height"] = 12
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["iconOffsetX"] = 5
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["iconSize"] = 25
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["yOffset"] = -20
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["countFont"] = "Montserrat-SemiBold"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["countFontOutline"] = "NONE"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["size"] = 40
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["font"] = "Montserrat-SemiBold"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["height"] = 12
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["iconOffsetX"] = 5
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["iconSize"] = 25
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["yOffset"] = -20
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["raidTargetIndicator"]["size"] = 30
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["countFontOutline"] = "NONE"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["countFont"] = "Montserrat-SemiBold"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["title"]["format"] = "[guild]"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["power"]["displayAltPower"] = true
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["power"]["hideWhenEmpty"] = true
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["power"]["enable"] = true
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["power"]["height"] = 5
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["power"]["yOffset"] = -11
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["height"] = 16
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["text"]["font"] = "Montserrat-Bold"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["text"]["fontOutline"] = "NONE"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["text"]["position"] = "TOPRIGHT"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["text"]["parent"] = "Health"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["text"]["format"] = "[health:current-percent-nostatus]"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["text"]["fontSize"] = 10
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["text"]["yOffset"] = -14
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["level"]["fontSize"] = 12
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["level"]["font"] = "Montserrat-Bold"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["level"]["yOffset"] = 0
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["name"]["format"] = "[namecolor][name:abbrev:short]"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["name"]["fontSize"] = 14
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["name"]["font"] = "Montserrat-Bold"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["name"]["yOffset"] = 0
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["countFontOutline"] = "NONE"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["priority"] = "Blacklist,Dispellable,blockNoDuration,Personal,Boss,CCDebuffs"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["countFont"] = "Montserrat-SemiBold"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["size"] = 40
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["font"] = "Montserrat-SemiBold"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["height"] = 12
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["iconOffsetX"] = 5
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["iconSize"] = 25
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["yOffset"] = -20
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["raidTargetIndicator"]["size"] = 30
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["maxDuration"] = 0
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["priority"] = "Blacklist,blockNoDuration,Personal,TurtleBuffs"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["countFont"] = "Montserrat-SemiBold"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["countFontOutline"] = "NONE"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["title"]["format"] = "[guild]"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["power"]["displayAltPower"] = true
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["power"]["hideWhenEmpty"] = true
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["power"]["enable"] = true
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["power"]["height"] = 5
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["power"]["yOffset"] = -11
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["name"]["format"] = "[namecolor][name:abbrev:short]"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["name"]["fontSize"] = 14
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["name"]["font"] = "Montserrat-Bold"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["name"]["yOffset"] = 0
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["level"]["fontSize"] = 12
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["level"]["font"] = "Montserrat-Bold"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["level"]["yOffset"] = 0
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["height"] = 16
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["text"]["font"] = "Montserrat-Bold"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["text"]["fontOutline"] = "NONE"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["text"]["position"] = "TOPRIGHT"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["text"]["parent"] = "Health"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["text"]["format"] = "[health:current-percent-nostatus]"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["text"]["fontSize"] = 10
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["text"]["yOffset"] = -14
	E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["countFont"] = "Montserrat-SemiBold"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["numAuras"] = 8
	E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["countFontOutline"] = "NONE"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["priority"] = "Blacklist,Dispellable,blockNoDuration,Personal,Boss,CCDebuffs"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["size"] = 30
	E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["yOffset"] = 15
	E.db["nameplates"]["units"]["ENEMY_NPC"]["power"]["displayAltPower"] = true
	E.db["nameplates"]["units"]["ENEMY_NPC"]["power"]["hideWhenEmpty"] = true
	E.db["nameplates"]["units"]["ENEMY_NPC"]["power"]["enable"] = true
	E.db["nameplates"]["units"]["ENEMY_NPC"]["power"]["height"] = 5
	E.db["nameplates"]["units"]["ENEMY_NPC"]["power"]["yOffset"] = -11
	E.db["nameplates"]["units"]["ENEMY_NPC"]["questIcon"]["font"] = "Roboto-Black"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["questIcon"]["position"] = "LEFT"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["questIcon"]["xOffset"] = 5
	E.db["nameplates"]["units"]["ENEMY_NPC"]["questIcon"]["textPosition"] = "TOP"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["questIcon"]["size"] = 40
	E.db["nameplates"]["units"]["ENEMY_NPC"]["questIcon"]["yOffset"] = 1
	E.db["nameplates"]["units"]["ENEMY_NPC"]["raidTargetIndicator"]["size"] = 30
	E.db["nameplates"]["units"]["ENEMY_NPC"]["eliteIcon"]["enable"] = true
	E.db["nameplates"]["units"]["ENEMY_NPC"]["eliteIcon"]["xOffset"] = 6
	E.db["nameplates"]["units"]["ENEMY_NPC"]["eliteIcon"]["size"] = 30
	E.db["nameplates"]["units"]["ENEMY_NPC"]["name"]["format"] = "[namecolor][name:medium]"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["name"]["fontSize"] = 14
	E.db["nameplates"]["units"]["ENEMY_NPC"]["name"]["font"] = "Montserrat-Bold"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["name"]["yOffset"] = 0
	E.db["nameplates"]["units"]["ENEMY_NPC"]["buffs"]["priority"] = "Blacklist,blockNoDuration,Personal,TurtleBuffs"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["buffs"]["countFont"] = "Montserrat-SemiBold"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["buffs"]["countFontOutline"] = "NONE"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["title"]["format"] = "[guild]"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["level"]["format"] = "[difficultycolor][level]"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["level"]["fontSize"] = 12
	E.db["nameplates"]["units"]["ENEMY_NPC"]["level"]["font"] = "Montserrat-Bold"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["level"]["yOffset"] = 0
	E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["height"] = 16
	E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["text"]["font"] = "Montserrat-Bold"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["text"]["fontOutline"] = "NONE"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["text"]["position"] = "TOPRIGHT"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["text"]["parent"] = "Health"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["text"]["format"] = "[health:current-percent-nostatus]"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["text"]["fontSize"] = 10
	E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["text"]["yOffset"] = -14
	E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["font"] = "Montserrat-SemiBold"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["height"] = 12
	E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["iconOffsetX"] = 5
	E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["iconSize"] = 25
	E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["yOffset"] = -20
	E.db["nameplates"]["smoothbars"] = true
	E.db["nameplates"]["font"] = "Montserrat-Bold"
	E.db["nameplates"]["cooldown"]["expiringColor"]["b"] = 0.41176470588235
	E.db["nameplates"]["cooldown"]["expiringColor"]["g"] = 0.38039215686275
	E.db["nameplates"]["cooldown"]["expiringColor"]["r"] = 0.74901960784314
	E.db["bags"]["countFontSize"] = 14
	E.db["bags"]["itemLevelFont"] = "Montserrat-Bold"
	E.db["bags"]["split"]["player"] = true
	E.db["bags"]["itemLevelThreshold"] = 207
	E.db["bags"]["itemLevelFontSize"] = 14
	E.db["bags"]["junkDesaturate"] = true
	E.db["bags"]["itemLevelCustomColorEnable"] = true
	E.db["bags"]["bagSize"] = 40
	E.db["bags"]["junkIcon"] = true
	E.db["bags"]["bagWidth"] = 521
	E.db["bags"]["countFont"] = "Montserrat-Bold"
	E.db["bags"]["transparent"] = true
	E.db["bags"]["vendorGrays"]["details"] = true
	E.db["bags"]["vendorGrays"]["enable"] = true
	E.db["bags"]["clearSearchOnClose"] = true
	E.db["bags"]["bankSize"] = 40
	E.db["bags"]["scrapIcon"] = true
	E.db["bags"]["bankWidth"] = 692
	E.db["bags"]["itemLevelFontOutline"] = "OUTLINE"
	E.db["bags"]["reverseSlots"] = true
	E.db["bags"]["showBindType"] = true
	E.db["bags"]["itemLevelCustomColor"]["r"] = 0.96862745098039
	E.db["bags"]["itemLevelCustomColor"]["b"] = 0.38823529411765
	E.db["bags"]["moneyFormat"] = "FULL"
	E.db["cooldown"]["secondsColor"]["r"] = 0.92156862745098
	E.db["cooldown"]["secondsColor"]["g"] = 0.79607843137255
	E.db["cooldown"]["secondsColor"]["b"] = 0.54509803921569
	E.db["cooldown"]["daysColor"]["r"] = 0.36862745098039
	E.db["cooldown"]["daysColor"]["g"] = 0.50588235294118
	E.db["cooldown"]["daysColor"]["b"] = 0.67450980392157
	E.db["cooldown"]["expiringColor"]["r"] = 0.74901960784314
	E.db["cooldown"]["expiringColor"]["g"] = 0.38039215686275
	E.db["cooldown"]["expiringColor"]["b"] = 0.4156862745098
	E.db["cooldown"]["fonts"]["enable"] = true
	E.db["cooldown"]["fonts"]["font"] = "Montserrat-Bold"
	E.db["cooldown"]["hoursColor"]["r"] = 0.53333333333333
	E.db["cooldown"]["hoursColor"]["g"] = 0.75294117647059
	E.db["cooldown"]["hoursColor"]["b"] = 0.8156862745098
	E.db["chat"]["useCustomTimeColor"] = false
	E.db["chat"]["fontSize"] = 14
	E.db["chat"]["keywordSound"] = "Simon Chime"
	E.db["chat"]["tabFont"] = "Montserrat-Bold"
	E.db["chat"]["panelColor"]["a"] = 0.53608983755112
	E.db["chat"]["panelColor"]["r"] = 0.13725490196078
	E.db["chat"]["panelColor"]["g"] = 0.15294117647059
	E.db["chat"]["panelColor"]["b"] = 0.18823529411765
	E.db["chat"]["tabFontSize"] = 14
	E.db["chat"]["font"] = "Montserrat-SemiBold"
	E.db["chat"]["panelHeight"] = 200
	E.db["chat"]["editBoxPosition"] = "ABOVE_CHAT"
	E.db["chat"]["tabSelectorColor"]["r"] = 0.53333333333333
	E.db["chat"]["tabSelectorColor"]["g"] = 0.75294117647059
	E.db["chat"]["tabSelectorColor"]["b"] = 0.8156862745098
	E.db["chat"]["tabSelector"] = "BOX1"
	E.db["chat"]["panelWidth"] = 570

		--[[
		--If you want to modify the base layout according to
		-- certain conditions then this is how you could do it
		if layout == "tank" then
			--Make some changes to the layout posted above
		elseif layout == "dps" then
			--Make some other changes
		elseif layout == "healer" then
			--Make some different changes
		end
	--]]


	--[[
	--	This section at the bottom is just to update ElvUI and display a message
	--]]
	--Update ElvUI
	E:UpdateAll(true)
	--Show message about layout being set
	PluginInstallStepComplete.message = "Layout Set"
	PluginInstallStepComplete:Show()
end

--This function is executed when you press "Skip Process" or "Finished" in the installer.
local function InstallComplete()
	if GetCVarBool("Sound_EnableMusic") then
		StopMusic()
	end

	--Set a variable tracking the version of the addon when layout was installed
	E.db[MyPluginName].install_version = Version

	ReloadUI()
end

--This is the data we pass on to the ElvUI Plugin Installer.
--The Plugin Installer is reponsible for displaying the install guide for this layout.
local InstallerData = {
	Title = format("|cff4beb2c%s %s|r", MyPluginName, "Installation"),
	Name = MyPluginName,
	--tutorialImage = "Interface\\AddOns\\MyAddOn\\logo.tga", --If you have a logo you want to use, otherwise it uses the one from ElvUI
	Pages = {
		[1] = function()
			PluginInstallFrame.SubTitle:SetFormattedText("Welcome to the installation for %s.", MyPluginName)
			PluginInstallFrame.Desc1:SetText("This installation process will guide you through a few steps and apply settings to your current ElvUI profile. If you want to be able to go back to your original settings then create a new profile before going through this installation process.")
			PluginInstallFrame.Desc2:SetText("Please press the continue button if you wish to go through the installation process, otherwise click the 'Skip Process' button.")
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", InstallComplete)
			PluginInstallFrame.Option1:SetText("Skip Process")
		end,
		[2] = function()
			PluginInstallFrame.SubTitle:SetText("Layouts")
			PluginInstallFrame.Desc1:SetText("These are the layouts that are available. Please click a button below to apply the layout of your choosing.")
			PluginInstallFrame.Desc2:SetText("Importance: |cff07D400High|r")
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() SetupLayout("tank") end)
			PluginInstallFrame.Option1:SetText("Tank")
			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript("OnClick", function() SetupLayout("healer") end)
			PluginInstallFrame.Option2:SetText("Healer")
			PluginInstallFrame.Option3:Show()
			PluginInstallFrame.Option3:SetScript("OnClick", function() SetupLayout("dps") end)
			PluginInstallFrame.Option3:SetText("DPS")
		end,
		[3] = function()
			PluginInstallFrame.SubTitle:SetText("Installation Complete")
			PluginInstallFrame.Desc1:SetText("You have completed the installation process.")
			PluginInstallFrame.Desc2:SetText("Please click the button below in order to finalize the process and automatically reload your UI.")
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", InstallComplete)
			PluginInstallFrame.Option1:SetText("Finished")
		end,
	},
	StepTitles = {
		[1] = "Welcome",
		[2] = "Layouts",
		[3] = "Installation Complete",
	},
	StepTitlesColor = {1, 1, 1},
	StepTitlesColorSelected = {0, 179/255, 1},
	StepTitleWidth = 200,
	StepTitleButtonWidth = 180,
	StepTitleTextJustification = "RIGHT",
}

--This function holds the options table which will be inserted into the ElvUI config
local function InsertOptions()
	E.Options.args.MyPluginName = {
		order = 100,
		type = "group",
		name = format("|cff4beb2c%s|r", MyPluginName),
		args = {
			header1 = {
				order = 1,
				type = "header",
				name = MyPluginName,
			},
			description1 = {
				order = 2,
				type = "description",
				name = format("%s is a layout for ElvUI.", MyPluginName),
			},
			spacer1 = {
				order = 3,
				type = "description",
				name = "\n\n\n",
			},
			header2 = {
				order = 4,
				type = "header",
				name = "Installation",
			},
			description2 = {
				order = 5,
				type = "description",
				name = "The installation guide should pop up automatically after you have completed the ElvUI installation. If you wish to re-run the installation process for this layout then please click the button below.",
			},
			spacer2 = {
				order = 6,
				type = "description",
				name = "",
			},
			install = {
				order = 7,
				type = "execute",
				name = "Install",
				desc = "Run the installation process.",
				func = function() E:GetModule("PluginInstaller"):Queue(InstallerData); E:ToggleOptionsUI(); end,
			},
		},
	}
end

--Create a unique table for our plugin
P[MyPluginName] = {}

--This function will handle initialization of the addon
function mod:Initialize()
	--Initiate installation process if ElvUI install is complete and our plugin install has not yet been run
	if E.private.install_complete and E.db[MyPluginName].install_version == nil then
		E:GetModule("PluginInstaller"):Queue(InstallerData)
	end
	
	--Insert our options table when ElvUI config is loaded
	EP:RegisterPlugin(addon, InsertOptions)
end

--Register module with callback so it gets initialized when ready
E:RegisterModule(mod:GetName())
