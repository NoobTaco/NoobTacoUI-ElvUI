local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

function NoobTacoUI:XIV_Databar()
  -- Defaults On
  E.db["datatexts"]["panels"]["LeftChatDataPanel"]["enable"] = true
  E.db["datatexts"]["panels"]["RightChatDataPanel"]["enable"] = true

  -- Check if loaded
  if (C_AddOns.IsAddOnLoaded("XIV_Databar_Continued")) then
    -- Disable bottom data bars
    E.db["datatexts"]["panels"]["LeftChatDataPanel"]["enable"] = false
    E.db["datatexts"]["panels"]["RightChatDataPanel"]["enable"] = false

    -- Move lower UI elements up
    E.db["movers"]["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,30"
    E.db["movers"]["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,30"

    E.db["databars"]["experience"]["height"] = 200
    E.db["databars"]["reputation"]["height"] = 200
    -- Experience and Reputation bars
    E.db["movers"]["ExperienceBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,505,30"
    E.db["movers"]["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-505,30"
    -- Stance bar
    E.db["movers"]["ShiftAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,514,30"
    -- Action bars
    E.db["movers"]["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,30"
    E.db["movers"]["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,66"
    E.db["movers"]["ElvAB_2"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-514,30"
    E.db["movers"]["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,-285,30"
    E.db["movers"]["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,285,30"
    -- Player castbar
    E.db["movers"]["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,101"
    -- PowerBarContainerMover
    E.db["movers"]["PowerBarContainerMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,105"

    print("NoobTacoUI: XIV Databar Continued.")

    -- WagoAnalytics:IncrementCounter("XIV_DatabarCounter") -- Increase the counter by 1
    WagoAnalytics:IncrementCounter("XIV_DatabarCounter")
  end
end
