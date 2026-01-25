local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

-- CHANGELOG --------------------------------------------------------------------
--[[
    Version 1.5.0 - Cooldowns improvements
        - Updated the font used for cooldowns to "Poppins-SemiBold"
        - Adjusted the colors for cooldowns
]]
function NoobTacoUI:SetupCooldowns()
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
end
