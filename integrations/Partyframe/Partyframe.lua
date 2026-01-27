local addonName, Engine = ...
local NoobTacoUIElv = Engine.NoobTacoUIElv
local E, L, V, P, G = Engine.E, Engine.L, Engine.V, Engine.P, Engine.G

function NoobTacoUIElv:CellIntegration()
  -- Defaults On
  E.db["unitframe"]["units"]["raid1"]["enable"] = true
  E.db["unitframe"]["units"]["raid2"]["enable"] = true
  E.db["unitframe"]["units"]["raid3"]["enable"] = true
  E.db["unitframe"]["units"]["party"]["enable"] = true

  -- Check if loaded
  if (C_AddOns.IsAddOnLoaded("Cell")) then
    -- Disable ElvUI raid and party frames
    E.db["unitframe"]["units"]["raid1"]["enable"] = false
    E.db["unitframe"]["units"]["raid2"]["enable"] = false
    E.db["unitframe"]["units"]["raid3"]["enable"] = false
    E.db["unitframe"]["units"]["party"]["enable"] = false

    print("NoobTacoUI-ElvUI: Cell is active. ElvUI raid and party frames will be disabled.")
  end
end
