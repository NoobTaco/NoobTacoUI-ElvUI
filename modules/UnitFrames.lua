local addonName, Engine = ...
local NoobTacoUIElv = Engine.NoobTacoUIElv
local E, L, V, P, G = Engine.E, Engine.L, Engine.V, Engine.P, Engine.G

-- CHANGELOG --------------------------------------------------------------------
--[[
    Version 1.5.0 - Unitframes improvements
        - Updated the font used for unitframes to "Poppins-SemiBold"
        - Adjusted the colors for unitframes
        - Increased the font size for unitframes

    Version 2.0.0 - Midnight Upgrade
        - Verified compatibility with ElvUI Midnight (14.x)
        - Updated layout initialization for WoW 12.0
]]
function NoobTacoUIElv:SetupLayout()
    -- -- Fix Movers ??
    if E.db["movers"] == nil then
        E.db["movers"] = {}
    end

    -- Extra Options not Exported by base profile
    E.db["unitframe"]["units"]["player"]["infoPanel"]["enable"] = false
    E.db["unitframe"]["units"]["target"]["infoPanel"]["enable"] = false
    E.db["unitframe"]["units"]["target"]["orientation"] = "RIGHT"

    -- UNITFRAME ----------------------------------------------------------------
    E.db["unitframe"]["fontSize"] = 13
    E.db["unitframe"]["smartRaidFilter"] = false

    NoobTacoUIElv:UnitframePlayer()
    NoobTacoUIElv:UnitframeFocus()
    NoobTacoUIElv:UnitframePet()
    NoobTacoUIElv:UnitframeParty()
    NoobTacoUIElv:UnitframeTarget()
    NoobTacoUIElv:UnitframeTargetTarget()
    NoobTacoUIElv:UnitframeBoss()
    NoobTacoUIElv:UnitframeRaid1()
    NoobTacoUIElv:UnitframeRaid3()

    E.db["unitframe"]["font"] = "Poppins-SemiBold"
    E.db["unitframe"]["colors"]["auraBarBuff"]["r"] = 0.96
    E.db["unitframe"]["colors"]["auraBarBuff"]["g"] = 0.55
    E.db["unitframe"]["colors"]["auraBarBuff"]["b"] = 0.73
    E.db["unitframe"]["colors"]["healthclass"] = true
    E.db["unitframe"]["colors"]["castClassColor"] = true
    E.db["unitframe"]["colors"]["borderColor"]["b"] = 0.32156862745098
    E.db["unitframe"]["colors"]["borderColor"]["g"] = 0.25882352941176
    E.db["unitframe"]["colors"]["borderColor"]["r"] = 0.23137254901961
    E.db["unitframe"]["colors"]["customhealthbackdrop"] = true
    E.db["unitframe"]["colors"]["health_backdrop"]["r"] = 0.1803921610117
    E.db["unitframe"]["colors"]["health_backdrop"]["g"] = 0.2039215862751
    E.db["unitframe"]["colors"]["health_backdrop"]["b"] = 0.25098040699959
    E.db["unitframe"]["colors"]["healthbackdropbyvalue"] = true
    E.db["unitframe"]["colors"]["castNoInterrupt"]["b"] = 0.4156862745098
    E.db["unitframe"]["colors"]["castNoInterrupt"]["g"] = 0.38039215686275
    E.db["unitframe"]["colors"]["castNoInterrupt"]["r"] = 0.74901960784314
    E.db["unitframe"]["fontOutline"] = "NONE"
    E.db["unitframe"]["smoothbars"] = true
    E.db["unitframe"]["targetSound"] = true
    E.db["unitframe"]["statusbar"] = "NT_Nord04"
end

function NoobTacoUIElv:SetupUnitFrames(layout, wowver)
    -- DPS and TANK Layout
    if layout == "v1" then
        -- Option2
        E.db.unitframes = nil

        E.db["movers"]["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-240,158"
        E.db["movers"]["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-245,203"
        E.db["movers"]["PetExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-240,150"
        E.db["movers"]["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-245,231"
        E.db["movers"]["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,245,203"
        E.db["movers"]["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,245,231"
        E.db["movers"]["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,245,203"

        E.db["unitframe"]["units"]["party"]["width"] = 100
        E.db["unitframe"]["units"]["party"]["growthDirection"] = "UP_RIGHT"

        -- Raid Frame Movers
        E.db["movers"]["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,275"
        E.db["movers"]["ElvUF_Raid3Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,274"
        E.db["movers"]["ElvUF_Raid2Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,269"
        E.db["movers"]["ElvUF_Raid1Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,274"

        -- Enable Castbar
        E.db["unitframe"]["units"]["player"]["castbar"]["enable"] = true

        -- Totem tracker mover DK pet as well
        E.db["movers"]["TotemTrackerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-205,155"
    elseif layout == "v2" then
        -- Luxothe Weak Aura layout
        E.db.unitframes = nil

        E.db["movers"]["ElvUF_PartyMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,285"
        E.db["movers"]["ElvUF_PetCastbarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,250"
        E.db["movers"]["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,250"
        E.db["movers"]["PetExperienceBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,239"
        E.db["movers"]["ElvUF_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,285"
        E.db["movers"]["ElvUF_TargetCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-540,250"
        E.db["movers"]["ElvUF_TargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-540,285"
        E.db["movers"]["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-540,250"

        E.db["unitframe"]["units"]["party"]["width"] = 90
        E.db["unitframe"]["units"]["party"]["growthDirection"] = "RIGHT_UP"

        -- Raid Frame Movers

        E.db["movers"]["ElvUF_Raid3Mover"] = "BOTTOM,ElvUIParent,BOTTOM,0,115"
        E.db["movers"]["ElvUF_Raid1Mover"] = "BOTTOM,ElvUIParent,BOTTOM,0,115"

        -- Enable Castbar
        E.db["unitframe"]["units"]["player"]["castbar"]["enable"] = true

        -- Totem tracker mover DK pet as well
        E.db["movers"]["TotemTrackerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-300,244"
    elseif layout == "v3" then
        E.db.unitframes = nil

        -- Movers
        E.db["movers"]["ElvUF_PetCastbarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,250"
        E.db["movers"]["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,250"
        E.db["movers"]["PetExperienceBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,239"
        E.db["movers"]["ElvUF_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,540,285"
        E.db["movers"]["ElvUF_TargetCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-540,250"
        E.db["movers"]["ElvUF_TargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-540,285"
        E.db["movers"]["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-540,250"

        E.db["unitframe"]["units"]["party"]["width"] = 100
        E.db["unitframe"]["units"]["party"]["growthDirection"] = "UP_RIGHT"

        -- Raid Frame Movers
        E.db["movers"]["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,275"
        E.db["movers"]["ElvUF_Raid3Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,274"
        E.db["movers"]["ElvUF_Raid1Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,274"

        -- disable Castbar
        E.db["unitframe"]["units"]["player"]["castbar"]["enable"] = true

        -- Totem tracker mover DK pet as well
        E.db["movers"]["TotemTrackerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-300,244"
    end
    -- Update ElvUI --------------------------------------
    E:UpdateAll(true)

    -- Show message about layout being set
    PluginInstallStepComplete.message = "Unitframes Set"
    PluginInstallStepComplete:Show()
end
