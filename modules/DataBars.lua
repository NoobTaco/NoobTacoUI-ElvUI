local addonName, Engine = ...
local NoobTacoUIElv = Engine.NoobTacoUIElv
local E, L, V, P, G = Engine.E, Engine.L, Engine.V, Engine.P, Engine.G

-- CHANGELOG --------------------------------------------------------------------
--[[
    Version 1.5.0 - Databars improvements
        - Updated the font used for databars to "Poppins-SemiBold"
        - Adjusted the colors for experience and rested
        - Increased the font size for datatexts
]]
function NoobTacoUIElv:SetupDatabars()
    if E.Retail then -- Retail
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
    E.db["datatexts"]["font"] = "Poppins-SemiBold"
    E.db["datatexts"]["fontSize"] = 13
    E.db["datatexts"]["panels"]["Center"][1] = "Talent/Loot Specialization"
    E.db["datatexts"]["panels"]["Center"][2] = ""
    E.db["datatexts"]["panels"]["Center"][3] = "Time"
    E.db["datatexts"]["panels"]["Center"][4] = ""
    E.db["datatexts"]["panels"]["Center"][5] = "Volume"
    E.db["datatexts"]["panels"]["Center"]["battleground"] = false
    E.db["datatexts"]["panels"]["Center"]["enable"] = true
    E.db["datatexts"]["panels"]["LeftChatDataPanel"][1] = "Guild"
    E.db["datatexts"]["panels"]["LeftChatDataPanel"][2] = "Friends"
    E.db["datatexts"]["panels"]["LeftChatDataPanel"][3] = "Item Level"
    E.db["datatexts"]["panels"]["LeftChatDataPanel"]["backdrop"] = false
    E.db["datatexts"]["panels"]["MinimapPanel"][1] = "Coords"
    E.db["datatexts"]["panels"]["MinimapPanel"][2] = "MovementSpeed"
    E.db["datatexts"]["panels"]["RightChatDataPanel"][1] = "Experience"
    E.db["datatexts"]["panels"]["RightChatDataPanel"][2] = "System"
    E.db["datatexts"]["panels"]["RightChatDataPanel"][3] = "Gold"
    E.db["datatexts"]["panels"]["RightChatDataPanel"]["backdrop"] = false

    E.global["datatexts"]["customPanels"]["Center"]["backdrop"] = false
    E.global["datatexts"]["customPanels"]["Center"]["name"] = "Center"
    E.global["datatexts"]["customPanels"]["Center"]["numPoints"] = 5
    E.global["datatexts"]["customPanels"]["Center"]["width"] = 945
    E.global["datatexts"]["settings"]["MovementSpeed"]["Label"] = "Speed"
    E.global["datatexts"]["settings"]["MovementSpeed"]["decimalLength"] = 0

    -- DATABARS ------------------------------------------
    E.db["databars"]["threat"]["enable"] = false
    E.db["databars"]["threat"]["font"] = "Poppins-SemiBold"
    E.db["databars"]["threat"]["height"] = 12
    E.db["databars"]["threat"]["width"] = 200

    E.db["databars"]["experience"]["textFormat"] = "NONE"
    E.db["databars"]["experience"]["font"] = "Poppins-Medium"
    E.db["databars"]["experience"]["height"] = 222
    E.db["databars"]["experience"]["hideAtMaxLevel"] = false
    E.db["databars"]["experience"]["hideInCombat"] = false
    E.db["databars"]["experience"]["orientation"] = "VERTICAL"
    E.db["databars"]["experience"]["questCompletedOnly"] = true
    E.db["databars"]["experience"]["showBubbles"] = false
    E.db["databars"]["experience"]["width"] = 8

    E.db["databars"]["reputation"]["enable"] = true
    E.db["databars"]["reputation"]["font"] = "Poppins-Medium"
    E.db["databars"]["reputation"]["height"] = 8
    E.db["databars"]["reputation"]["hideInCombat"] = false
    E.db["databars"]["reputation"]["orientation"] = "Automatic"
    E.db["databars"]["reputation"]["showBubbles"] = false
    E.db["databars"]["reputation"]["width"] = 200

    E.db["databars"]["colors"]["experience"]["a"] = 1
    E.db["databars"]["colors"]["experience"]["r"] = 0.14901960784314
    E.db["databars"]["colors"]["experience"]["g"] = 0.49411764705882
    E.db["databars"]["colors"]["experience"]["b"] = 0.83529411764706
    E.db["databars"]["colors"]["rested"]["a"] = 1
    E.db["databars"]["colors"]["rested"]["r"] = 0.70588235294118
    E.db["databars"]["colors"]["rested"]["g"] = 0.29803921568627
    E.db["databars"]["colors"]["rested"]["b"] = 0.56078431372549

    E.db["databars"]["petExperience"]["width"] = 175
end
