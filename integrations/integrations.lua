local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

function NoobTacoUI:SetupIntegration(layout, wowver)
  -- TODO: Add more bag mod checks
  if (C_AddOns.IsAddOnLoaded("Baganator")) then
    E.private["bags"]["enable"] = false
  end

  -- Check if XIV_Databar is loaded and disable ElvUI databars
  if (C_AddOns.IsAddOnLoaded("XIV_Databar")) then
    E.private["databars"]["enable"] = false
  end
end
