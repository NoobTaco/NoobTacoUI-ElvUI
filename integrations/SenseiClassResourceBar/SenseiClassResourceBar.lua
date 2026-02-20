local addonName, Engine = ...
local NoobTacoUIElv = Engine.NoobTacoUIElv
local E, L, V, P, G = Engine.E, Engine.L, Engine.V, Engine.P, Engine.G

function NoobTacoUIElv:SenseiClassResourceBar()
  -- Check if loaded
  if (C_AddOns.IsAddOnLoaded("SenseiClassResourceBar")) then
    -- Disable player unitframe classbar and power bar
    E.db["unitframe"]["units"]["player"]["classbar"]["enable"] = false
    E.db["unitframe"]["units"]["player"]["power"]["enable"] = false

    print("NoobTacoUI-ElvUI: SenseiClassResourceBar integration active.")
  end
end
