local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

function NoobTacoUI:SetupTooltips(wowver)
  -- TOOLTIPS ---------------------------------------------------------------
  E.db["tooltip"]["textFontSize"] = 14
  E.db["tooltip"]["font"] = "Montserrat-Bold"
  E.db["tooltip"]["healthBar"]["height"] = 10
  E.db["tooltip"]["healthBar"]["font"] = "Montserrat-Bold"
  E.db["tooltip"]["healthBar"]["fontOutline"] = "NONE"
  E.db["tooltip"]["smallTextFontSize"] = 14
  E.db["tooltip"]["colorAlpha"] = 1
  E.db["tooltip"]["headerFontSize"] = 14
end