local addonName, Engine = ...
local NoobTacoUIElv = Engine.NoobTacoUIElv
local E, L, V, P, G = Engine.E, Engine.L, Engine.V, Engine.P, Engine.G

function NoobTacoUIElv:UnitframePet()
    -- Ensure custom text is properly initialized for new installs
    if not E.db.unitframe.units.pet.customTexts then E.db.unitframe.units.pet.customTexts = {} end
    if not E.db.unitframe.units.pet.customTexts["pet-name"] then E.db.unitframe.units.pet.customTexts["pet-name"] = {} end

    E.db["unitframe"]["units"]["pet"]["width"] = 175
    E.db["unitframe"]["units"]["pet"]["height"] = 25
    E.db["unitframe"]["units"]["pet"]["infoPanel"]["height"] = 14
    E.db["unitframe"]["units"]["pet"]["disableTargetGlow"] = false

    E.db["unitframe"]["units"]["pet"]["name"]["position"] = "LEFT"
    E.db["unitframe"]["units"]["pet"]["name"]["text_format"] = ""
    E.db["unitframe"]["units"]["pet"]["name"]["xOffset"] = 4

    E.db["unitframe"]["units"]["pet"]["power"]["enable"] = false

    E.db["unitframe"]["units"]["pet"]["buffs"]["enable"] = false
    E.db["unitframe"]["units"]["pet"]["buffs"]["sizeOverride"] = 30
    E.db["unitframe"]["units"]["pet"]["buffs"]["yOffset"] = -12

    E.db["unitframe"]["units"]["pet"]["debuffs"]["enable"] = false
    E.db["unitframe"]["units"]["pet"]["debuffs"]["height"] = 22
    E.db["unitframe"]["units"]["pet"]["debuffs"]["sizeOverride"] = 25
    E.db["unitframe"]["units"]["pet"]["debuffs"]["xOffset"] = -5
    E.db["unitframe"]["units"]["pet"]["debuffs"]["yOffset"] = 27

    E.db["unitframe"]["units"]["pet"]["castbar"]["height"] = 30
    E.db["unitframe"]["units"]["pet"]["castbar"]["width"] = 175
    E.db["unitframe"]["units"]["pet"]["castbar"]["iconSize"] = 32
    E.db["unitframe"]["units"]["pet"]["castbar"]["overlayOnFrame"] = "Power"

    -- Pet Name Custom Text
    E.db["unitframe"]["units"]["pet"]["customTexts"]["pet-name"]["attachTextTo"] = "Health"
    E.db["unitframe"]["units"]["pet"]["customTexts"]["pet-name"]["enable"] = true
    E.db["unitframe"]["units"]["pet"]["customTexts"]["pet-name"]["font"] = "Poppins-SemiBold"
    E.db["unitframe"]["units"]["pet"]["customTexts"]["pet-name"]["fontOutline"] = "SHADOW"
    E.db["unitframe"]["units"]["pet"]["customTexts"]["pet-name"]["justifyH"] = "LEFT"
    E.db["unitframe"]["units"]["pet"]["customTexts"]["pet-name"]["size"] = 13
    if NoobTacoUIElv.IsClassic and E.myclass == "HUNTER" then
        E.db["unitframe"]["units"]["pet"]["customTexts"]["pet-name"]["text_format"] =
        "[happiness:discord] [name:medium] [smartlevel]"
    else
        E.db["unitframe"]["units"]["pet"]["customTexts"]["pet-name"]["text_format"] = "[name:medium] [smartlevel]"
    end
    E.db["unitframe"]["units"]["pet"]["customTexts"]["pet-name"]["xOffset"] = 5
    E.db["unitframe"]["units"]["pet"]["customTexts"]["pet-name"]["yOffset"] = 0

    E.db["unitframe"]["units"]["pet"]["health"]["colorPetByUnitClass"] = true
end
