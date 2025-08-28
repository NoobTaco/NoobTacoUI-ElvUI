local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

function NoobTacoUI:PlatterIntegration()

  -- Defaults On
    E.private["nameplates"]["enable"] = true

  -- Check if loaded
  if (C_AddOns.IsAddOnLoaded("Plater")) then
    -- Disable ElvUI nameplates
    E.private["nameplates"]["enable"] = false

    print("NoobTacoUI: Plater is active. ElvUI nameplates will be disabled.")
  end
end
