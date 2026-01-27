local addonName, Engine = ...
local NoobTacoUIElv = Engine.NoobTacoUIElv
local E, L, V, P, G = Engine.E, Engine.L, Engine.V, Engine.P, Engine.G

function NoobTacoUIElv:IntegrationBag()
  -- Defaults On
  E.private["bags"]["enable"] = true

  -- TODO: Add more bag mod checks
  if (C_AddOns.IsAddOnLoaded("Baganator")) then
    E.private["bags"]["enable"] = false
    print("NoobTacoUI-ElvUI: Baganator is loaded. Disabling ElvUI bag integration.")
  end
end
