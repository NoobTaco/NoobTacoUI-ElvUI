local addonName, Engine = ...
local NoobTacoUIElv = Engine.NoobTacoUIElv
local E, L, V, P, G = Engine.E, Engine.L, Engine.V, Engine.P, Engine.G

-- CHANGELOG --------------------------------------------------------------------
--[[
    Version 1.5.0 - Cooldowns improvements
        - Updated the font used for cooldowns to "Poppins-SemiBold"
        - Adjusted the colors for cooldowns
]]
function NoobTacoUIElv:SetupCooldowns()
    -- COOLDOWN --------------------------------------------------------------------
    -- COOLDOWN --------------------------------------------------------------------
    -- ElvUI 14.x uses E.db["cooldown"][module] structure.
    -- Threshold colors (secondsColor, expiringColor, etc.) are no longer supported in the same way.
    -- We'll set the global text color and font.

    if not E.db["cooldown"]["global"] then E.db["cooldown"]["global"] = {} end
    if not E.db["cooldown"]["global"]["colors"] then E.db["cooldown"]["global"]["colors"] = {} end
    if not E.db["cooldown"]["global"]["colors"]["text"] then E.db["cooldown"]["global"]["colors"]["text"] = {} end

    E.db["cooldown"]["global"]["colors"]["text"]["r"] = 0.92156862745098
    E.db["cooldown"]["global"]["colors"]["text"]["g"] = 0.79607843137255
    E.db["cooldown"]["global"]["colors"]["text"]["b"] = 0.54509803921569
    E.db["cooldown"]["global"]["font"] = "Poppins-SemiBold"
    E.db["cooldown"]["global"]["enable"] = true

    E.db["cooldown"]["actionbar"]["font"] = "Poppins-SemiBold"
    E.db["cooldown"]["aurabars"]["font"] = "Poppins-SemiBold"
    E.db["cooldown"]["auras"]["font"] = "Poppins-SemiBold"
    E.db["cooldown"]["bags"]["font"] = "Poppins-SemiBold"
    E.db["cooldown"]["bossbutton"]["font"] = "Poppins-SemiBold"
    E.db["cooldown"]["cdmanager"]["font"] = "Poppins-SemiBold"
    E.db["cooldown"]["nameplates"]["font"] = "Poppins-SemiBold"
    E.db["cooldown"]["totemtracker"]["font"] = "Poppins-SemiBold"
    E.db["cooldown"]["unitframe"]["font"] = "Poppins-SemiBold"
    E.db["cooldown"]["zonebutton"]["font"] = "Poppins-SemiBold"
end
