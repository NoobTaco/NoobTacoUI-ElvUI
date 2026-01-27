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

    -- Consolidated Settings from DPS/Tank Layout
    E.db["unitframe"]["units"]["player"]["castbar"]["enable"] = true

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
