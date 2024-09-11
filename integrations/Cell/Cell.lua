local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

function NoobTacoUI:CellIntegration()
  -- Check if loaded
  if (C_AddOns.IsAddOnLoaded("Cell")) then
    -- Disable ElvUI raid and party frames
    E.db["unitframe"]["units"]["raid1"]["enable"] = false
    E.db["unitframe"]["units"]["raid2"]["enable"] = false
    E.db["unitframe"]["units"]["raid3"]["enable"] = false
    E.db["unitframe"]["units"]["party"]["enable"] = false

    print("NoobTacoUI: Cell is active. ElvUI raid and party frames will be disabled.")
    -- WagoAnalytics:IncrementCounter("CellCounter") -- Increase the counter by 1
    WagoAnalytics:IncrementCounter("CellCounter")
  end
end
