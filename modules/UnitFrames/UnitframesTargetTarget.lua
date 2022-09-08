local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

function NoobTacoUI:UnitframeTargetTarget()
    E.db["unitframe"]["units"]["targettarget"]["customTexts"]["TargetTargetName"]["attachTextTo"] = "Health"
    E.db["unitframe"]["units"]["targettarget"]["customTexts"]["TargetTargetName"]["enable"] = false
    E.db["unitframe"]["units"]["targettarget"]["customTexts"]["TargetTargetName"]["font"] = "Exo2-Bold"
    E.db["unitframe"]["units"]["targettarget"]["customTexts"]["TargetTargetName"]["fontOutline"] = "NONE"
    E.db["unitframe"]["units"]["targettarget"]["customTexts"]["TargetTargetName"]["justifyH"] = "CENTER"
    E.db["unitframe"]["units"]["targettarget"]["customTexts"]["TargetTargetName"]["size"] = 14
    E.db["unitframe"]["units"]["targettarget"]["customTexts"]["TargetTargetName"]["text_format"] = "[name:medium]"
    E.db["unitframe"]["units"]["targettarget"]["customTexts"]["TargetTargetName"]["xOffset"] = 0
    E.db["unitframe"]["units"]["targettarget"]["customTexts"]["TargetTargetName"]["yOffset"] = 0
    E.db["unitframe"]["units"]["targettarget"]["height"] = 30
    E.db["unitframe"]["units"]["targettarget"]["name"]["text_format"] =
        "[name:medium] [difficultycolor][smartlevel] [shortclassification]"
    E.db["unitframe"]["units"]["targettarget"]["orientation"] = "LEFT"
    E.db["unitframe"]["units"]["targettarget"]["portrait"]["camDistanceScale"] = 0.85
    E.db["unitframe"]["units"]["targettarget"]["portrait"]["overlay"] = true
    E.db["unitframe"]["units"]["targettarget"]["portrait"]["width"] = 35
    E.db["unitframe"]["units"]["targettarget"]["portrait"]["xOffset"] = 0.05
    E.db["unitframe"]["units"]["targettarget"]["width"] = 200
end
