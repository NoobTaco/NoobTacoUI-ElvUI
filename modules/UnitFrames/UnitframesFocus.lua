local addonName, Engine = ...
local NoobTacoUIElv = Engine.NoobTacoUIElv
local E, L, V, P, G = Engine.E, Engine.L, Engine.V, Engine.P, Engine.G

-- CHANGELOG --------------------------------------------------------------------
--[[
    Version 1.6.0 - Unit frame updates
        - Updated unit frame dimensions (175x35)
        - Improved aura positioning and size overrides
        - Updated custom text formats and removed redundant settings
        - Disabled focus castbar and power bar for a cleaner aesthetic
    Version 1.5.0 - General improvements
        - Updated the font used for general UI to "Poppins-SemiBold"
        - Adjusted the colors for general UI
        - Increased the font size for general UI
]]
function NoobTacoUIElv:UnitframeFocus()
    if not E.db.unitframe.units.focus.customTexts then
        E.db.unitframe.units.focus.customTexts = {}
    end
    if not E.db.unitframe.units.focus.customTexts.TargetName then
        E.db.unitframe.units.focus.customTexts.TargetName = {}
    end

    E.db["unitframe"]["units"]["focus"]["width"] = 175
    E.db["unitframe"]["units"]["focus"]["height"] = 35

    E.db["unitframe"]["units"]["focus"]["aurabar"]["detachedWidth"] = 270
    E.db["unitframe"]["units"]["focus"]["aurabar"]["maxBars"] = 6

    E.db["unitframe"]["units"]["focus"]["buffs"]["anchorPoint"] = "TOPLEFT"
    E.db["unitframe"]["units"]["focus"]["buffs"]["countFont"] = "Poppins-SemiBold"
    E.db["unitframe"]["units"]["focus"]["buffs"]["enable"] = true
    E.db["unitframe"]["units"]["focus"]["buffs"]["maxDuration"] = 0
    E.db["unitframe"]["units"]["focus"]["buffs"]["perrow"] = 8
    E.db["unitframe"]["units"]["focus"]["buffs"]["priority"] = "Blacklist,Personal,nonPersonal"
    E.db["unitframe"]["units"]["focus"]["buffs"]["sizeOverride"] = 30
    E.db["unitframe"]["units"]["focus"]["buffs"]["yOffset"] = 20

    E.db["unitframe"]["units"]["focus"]["castbar"]["enable"] = false
    E.db["unitframe"]["units"]["focus"]["castbar"]["height"] = 30
    E.db["unitframe"]["units"]["focus"]["castbar"]["insideInfoPanel"] = false
    E.db["unitframe"]["units"]["focus"]["castbar"]["overlayOnFrame"] = "Power"
    E.db["unitframe"]["units"]["focus"]["castbar"]["width"] = 175

    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetName"]["attachTextTo"] = "Frame"
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetName"]["enable"] = true
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetName"]["font"] = "Poppins-SemiBold"
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetName"]["fontOutline"] = "SHADOW"
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetName"]["justifyH"] = "LEFT"
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetName"]["size"] = 13
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetName"]["text_format"] =
    "[name:medium]  [shortclassification]"
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetName"]["xOffset"] = 5
    E.db["unitframe"]["units"]["focus"]["customTexts"]["TargetName"]["yOffset"] = 0

    E.db["unitframe"]["units"]["focus"]["debuffs"]["anchorPoint"] = "TOPLEFT"
    E.db["unitframe"]["units"]["focus"]["debuffs"]["attachTo"] = "BUFFS"
    E.db["unitframe"]["units"]["focus"]["debuffs"]["countFont"] = "Poppins-SemiBold"
    E.db["unitframe"]["units"]["focus"]["debuffs"]["growthX"] = "RIGHT"
    E.db["unitframe"]["units"]["focus"]["debuffs"]["maxDuration"] = 0
    E.db["unitframe"]["units"]["focus"]["debuffs"]["numrows"] = 2
    E.db["unitframe"]["units"]["focus"]["debuffs"]["perrow"] = 8
    E.db["unitframe"]["units"]["focus"]["debuffs"]["priority"] =
    "Blacklist,Personal,RaidDebuffs,CCDebuffs,Friendly:Dispellable"
    E.db["unitframe"]["units"]["focus"]["debuffs"]["yOffset"] = 5

    E.db["unitframe"]["units"]["focus"]["disableMouseoverGlow"] = true
    E.db["unitframe"]["units"]["focus"]["disableTargetGlow"] = true
    E.db["unitframe"]["units"]["focus"]["healPrediction"]["absorbStyle"] = "NORMAL"
    E.db["unitframe"]["units"]["focus"]["health"]["attachTextTo"] = "InfoPanel"
    E.db["unitframe"]["units"]["focus"]["infoPanel"]["height"] = 20

    E.db["unitframe"]["units"]["focus"]["name"]["attachTextTo"] = "Frame"
    E.db["unitframe"]["units"]["focus"]["name"]["position"] = "BOTTOM"
    E.db["unitframe"]["units"]["focus"]["name"]["text_format"] = ""
    E.db["unitframe"]["units"]["focus"]["name"]["xOffset"] = 5
    E.db["unitframe"]["units"]["focus"]["name"]["yOffset"] = -85

    E.db["unitframe"]["units"]["focus"]["orientation"] = "RIGHT"

    E.db["unitframe"]["units"]["focus"]["portrait"]["camDistanceScale"] = 1.04
    E.db["unitframe"]["units"]["focus"]["portrait"]["enable"] = true
    E.db["unitframe"]["units"]["focus"]["portrait"]["width"] = 55

    E.db["unitframe"]["units"]["focus"]["power"]["attachTextTo"] = "Power"
    E.db["unitframe"]["units"]["focus"]["power"]["enable"] = false
    E.db["unitframe"]["units"]["focus"]["power"]["height"] = 20
    E.db["unitframe"]["units"]["focus"]["power"]["xOffset"] = -208
end
