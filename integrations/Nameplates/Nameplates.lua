local addonName, Engine = ...
local NoobTacoUIElv = Engine.NoobTacoUIElv
local E, L, V, P, G = Engine.E, Engine.L, Engine.V, Engine.P, Engine.G

function NoobTacoUIElv:PlaterIntegration()
  -- Check if loaded
  if (C_AddOns.IsAddOnLoaded("Plater")) then
    -- Disable ElvUI nameplates
    E.private["nameplates"]["enable"] = false

    print("NoobTacoUI-ElvUI: Plater is active. ElvUI nameplates will be disabled.")
  end
end

function NoobTacoUIElv:PlatynatorIntegration()
  -- Check if loaded
  if (C_AddOns.IsAddOnLoaded("Platynator")) then
    -- Disable ElvUI nameplates
    E.private["nameplates"]["enable"] = false

    print("NoobTacoUI-ElvUI: Platynator is active. ElvUI nameplates will be disabled.")
  end
end
