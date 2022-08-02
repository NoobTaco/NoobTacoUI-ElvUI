local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

function NoobTacoUI:SetupDatabars()
    if WOW_PROJECT_ID == WOW_PROJECT_MAINLINE then -- Retail
        E.db["databars"]["honor"]["enable"] = false
        E.db["databars"]["colors"]["quest"]["a"] = 0.99000000022352
        E.db["databars"]["colors"]["quest"]["r"] = 0.27450980392157
        E.db["databars"]["colors"]["quest"]["g"] = 0.74509803921569
        E.db["databars"]["colors"]["quest"]["b"] = 0.33725490196078
        E.db["databars"]["azerite"]["orientation"] = "VERTICAL"
        E.db["databars"]["azerite"]["height"] = 247
        E.db["databars"]["azerite"]["enable"] = false
        E.db["databars"]["azerite"]["width"] = 12
    end

    -- DATATEXT ------------------------------------------------------------------
    E.db["datatexts"]["font"] = "Montserrat-Bold"
    E.db["datatexts"]["panels"]["RightMiniPanel"] = "Bags"
    E.db["datatexts"]["panels"]["LeftCoordDtPanel"] = "Coords"
    E.db["datatexts"]["panels"]["RightCoordDtPanel"] = "Broker_RunSpeed"
    E.db["datatexts"]["panels"]["LeftChatDataPanel"][3] = "Item Level"
    E.db["datatexts"]["panels"]["LeftChatDataPanel"]["right"] = "Mana Regen"
    E.db["datatexts"]["panels"]["LeftChatDataPanel"]["left"] = "Broker_RunSpeed"
    E.db["datatexts"]["fontSize"] = 14

    -- DATABARS ------------------------------------------
    E.db["databars"]["threat"]["enable"] = false
    E.db["databars"]["threat"]["font"] = "Montserrat-Bold"
    E.db["databars"]["threat"]["height"] = 12
    E.db["databars"]["threat"]["width"] = 200

    E.db["databars"]["experience"]["textFormat"] = "NONE"
    E.db["databars"]["experience"]["font"] = "Montserrat-Regular"
    E.db["databars"]["experience"]["height"] = 222
    E.db["databars"]["experience"]["hideAtMaxLevel"] = false
    E.db["databars"]["experience"]["hideInCombat"] = false
    E.db["databars"]["experience"]["orientation"] = "VERTICAL"
    E.db["databars"]["experience"]["questCompletedOnly"] = true
    E.db["databars"]["experience"]["showBubbles"] = false
    E.db["databars"]["experience"]["width"] = 8
    E.db["databars"]["reputation"]["enable"] = true
    E.db["databars"]["reputation"]["font"] = "Montserrat-Regular"
    E.db["databars"]["reputation"]["height"] = 222
    E.db["databars"]["reputation"]["hideInCombat"] = false
    E.db["databars"]["reputation"]["orientation"] = "VERTICAL"
    E.db["databars"]["reputation"]["showBubbles"] = false
    E.db["databars"]["reputation"]["width"] = 8

    E.db["databars"]["colors"]["experience"]["a"] = 1
    E.db["databars"]["colors"]["experience"]["r"] = 0.14901960784314
    E.db["databars"]["colors"]["experience"]["g"] = 0.49411764705882
    E.db["databars"]["colors"]["experience"]["b"] = 0.83529411764706
    E.db["databars"]["colors"]["rested"]["a"] = 1
    E.db["databars"]["colors"]["rested"]["r"] = 0.70588235294118
    E.db["databars"]["colors"]["rested"]["g"] = 0.29803921568627
    E.db["databars"]["colors"]["rested"]["b"] = 0.56078431372549

    E.db["databars"]["petExperience"]["width"] = 200
end
