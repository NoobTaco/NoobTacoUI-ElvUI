local addonName, Engine = ...
local NoobTacoUIElv = Engine.NoobTacoUIElv
local E, L, V, P, G = Engine.E, Engine.L, Engine.V, Engine.P, Engine.G

function NoobTacoUIElv:ChattynatorIntegration()
  -- Check if loaded
  if (C_AddOns.IsAddOnLoaded("Chattynator")) then
    -- Disable ElvUI chat
    E.private["chat"]["enable"] = false

    print("NoobTacoUI-ElvUI: Chattynator is active. ElvUI chat will be disabled.")
  end
end
