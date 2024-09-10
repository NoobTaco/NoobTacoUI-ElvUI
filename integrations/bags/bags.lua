local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

function NoobTacoUI:IntegrationBag()
  -- Defaults On
  E.private["bags"]["enable"] = true

  -- TODO: Add more bag mod checks
  if (C_AddOns.IsAddOnLoaded("Baganator")) then
    E.private["bags"]["enable"] = false
    print("NoobTacoUI: Baganator is loaded. Disabling ElvUI bag integration.")
  end
end
