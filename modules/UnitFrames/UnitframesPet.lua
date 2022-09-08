local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

function NoobTacoUI:UnitframePet()
    E.db["unitframe"]["units"]["pet"]["buffs"]["enable"] = true
    E.db["unitframe"]["units"]["pet"]["buffs"]["sizeOverride"] = 21
    E.db["unitframe"]["units"]["pet"]["buffs"]["yOffset"] = -12
    E.db["unitframe"]["units"]["pet"]["castbar"]["height"] = 30
    E.db["unitframe"]["units"]["pet"]["castbar"]["iconSize"] = 32
    E.db["unitframe"]["units"]["pet"]["castbar"]["overlayOnFrame"] = "Power"
    E.db["unitframe"]["units"]["pet"]["castbar"]["width"] = 200
    E.db["unitframe"]["units"]["pet"]["customTexts"]["Pet Health"]["attachTextTo"] = "Frame"
    E.db["unitframe"]["units"]["pet"]["customTexts"]["Pet Health"]["enable"] = true
    E.db["unitframe"]["units"]["pet"]["customTexts"]["Pet Health"]["font"] = "2002"
    E.db["unitframe"]["units"]["pet"]["customTexts"]["Pet Health"]["fontOutline"] = "THICKOUTLINE"
    E.db["unitframe"]["units"]["pet"]["customTexts"]["Pet Health"]["justifyH"] = "LEFT"
    E.db["unitframe"]["units"]["pet"]["customTexts"]["Pet Health"]["size"] = 24
    E.db["unitframe"]["units"]["pet"]["customTexts"]["Pet Health"]["text_format"] = ""
    E.db["unitframe"]["units"]["pet"]["customTexts"]["Pet Health"]["xOffset"] = 131
    E.db["unitframe"]["units"]["pet"]["customTexts"]["Pet Health"]["yOffset"] = 0
    E.db["unitframe"]["units"]["pet"]["debuffs"]["enable"] = true
    E.db["unitframe"]["units"]["pet"]["debuffs"]["height"] = 22
    E.db["unitframe"]["units"]["pet"]["debuffs"]["sizeOverride"] = 25
    E.db["unitframe"]["units"]["pet"]["debuffs"]["xOffset"] = -5
    E.db["unitframe"]["units"]["pet"]["debuffs"]["yOffset"] = 27
    E.db["unitframe"]["units"]["pet"]["disableTargetGlow"] = false
    E.db["unitframe"]["units"]["pet"]["height"] = 30
    E.db["unitframe"]["units"]["pet"]["infoPanel"]["height"] = 14
    E.db["unitframe"]["units"]["pet"]["name"]["position"] = "LEFT"
    E.db["unitframe"]["units"]["pet"]["name"]["text_format"] = "[happiness:discord] [name:medium] - [level]"
    E.db["unitframe"]["units"]["pet"]["name"]["xOffset"] = 2
    E.db["unitframe"]["units"]["pet"]["width"] = 200
    if E.Retail then -- Retail
        E.db["unitframe"]["units"]["pet"]["name"]["text_format"] = "[name:medium] - [level]"
    end
end
