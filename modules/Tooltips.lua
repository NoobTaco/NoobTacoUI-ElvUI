local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

-- CHANGELOG --------------------------------------------------------------------
--[[
    Version 1.5.0 - Tooltips improvements
        - Updated the font used for tooltips to "Poppins-SemiBold"
        - Adjusted the colors for tooltips
        - Increased the font size for tooltips
]]
function NoobTacoUI:SetupTooltips()
    -- TOOLTIPS ---------------------------------------------------------------
    E.db["tooltip"]["textFontSize"] = 14
    E.db["tooltip"]["headerFontSize"] = 16
    E.db["tooltip"]["font"] = "Poppins-SemiBold"
    E.db["tooltip"]["headerFont"] = "Poppins-SemiBold"
    E.db["tooltip"]["healthBar"]["height"] = 10
    E.db["tooltip"]["healthBar"]["font"] = "Poppins-SemiBold"
    E.db["tooltip"]["healthBar"]["fontOutline"] = "NONE"
    E.db["tooltip"]["smallTextFontSize"] = 14
    E.db["tooltip"]["colorAlpha"] = 1
    E.db["tooltip"]["headerFontSize"] = 14
end
