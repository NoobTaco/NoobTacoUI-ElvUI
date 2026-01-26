local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

-- CHANGELOG --------------------------------------------------------------------
--[[
    Version 1.5.0 - General improvements
        - Updated the font used for general UI to "Poppins-SemiBold"
        - Adjusted the colors for general UI
        - Increased the font size for general UI
]]
function NoobTacoUI:UnitframeTargetTarget()
    E.db["unitframe"]["units"]["targettarget"]["customTexts"]["TargetTargetName"]["attachTextTo"] = "Health"
    E.db["unitframe"]["units"]["targettarget"]["customTexts"]["TargetTargetName"]["enable"] = false
    E.db["unitframe"]["units"]["targettarget"]["customTexts"]["TargetTargetName"]["font"] = "Poppins-SemiBold"
    E.db["unitframe"]["units"]["targettarget"]["customTexts"]["TargetTargetName"]["fontOutline"] = "NONE"
    E.db["unitframe"]["units"]["targettarget"]["customTexts"]["TargetTargetName"]["justifyH"] = "RIGHT"
    E.db["unitframe"]["units"]["targettarget"]["customTexts"]["TargetTargetName"]["size"] = 14
    E.db["unitframe"]["units"]["targettarget"]["customTexts"]["TargetTargetName"]["text_format"] = "[name:medium]"
    E.db["unitframe"]["units"]["targettarget"]["customTexts"]["TargetTargetName"]["xOffset"] = 0
    E.db["unitframe"]["units"]["targettarget"]["customTexts"]["TargetTargetName"]["yOffset"] = 0
    E.db["unitframe"]["units"]["targettarget"]["debuffs"]["enable"] = false
    E.db["unitframe"]["units"]["targettarget"]["disableMouseoverGlow"] = true
    E.db["unitframe"]["units"]["targettarget"]["height"] = 25
    E.db["unitframe"]["units"]["targettarget"]["name"]["position"] = "RIGHT"
    E.db["unitframe"]["units"]["targettarget"]["name"]["text_format"] =
    "[name:medium] [difficultycolor][smartlevel] [shortclassification]"
    E.db["unitframe"]["units"]["targettarget"]["orientation"] = "LEFT"
    E.db["unitframe"]["units"]["targettarget"]["portrait"]["camDistanceScale"] = 0.85
    E.db["unitframe"]["units"]["targettarget"]["portrait"]["overlay"] = true
    E.db["unitframe"]["units"]["targettarget"]["portrait"]["width"] = 35
    E.db["unitframe"]["units"]["targettarget"]["portrait"]["xOffset"] = 0.05
    E.db["unitframe"]["units"]["targettarget"]["power"]["enable"] = false
    E.db["unitframe"]["units"]["targettarget"]["raidicon"]["attachTo"] = "LEFT"
    E.db["unitframe"]["units"]["targettarget"]["raidicon"]["enable"] = false
    E.db["unitframe"]["units"]["targettarget"]["raidicon"]["xOffset"] = 2
    E.db["unitframe"]["units"]["targettarget"]["raidicon"]["yOffset"] = 0
    E.db["unitframe"]["units"]["targettarget"]["threatStyle"] = "GLOW"
    E.db["unitframe"]["units"]["targettarget"]["width"] = 175
end
