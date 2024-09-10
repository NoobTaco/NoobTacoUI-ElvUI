local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

function NoobTacoUI:IntegrationBag()
  -- Defaults On
  E.private["bags"]["enable"] = true

  -- TODO: Add more bag mod checks
  if (C_AddOns.IsAddOnLoaded("Baganator")) then
    E.private["bags"]["enable"] = false
    print("Baganator is loaded. Disabling NoobTacoUI bag integration.")
  end
end
