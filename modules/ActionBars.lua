local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

function NoobTacoUI:SetupActionBars()
  -- Main Actionbar
  E.db["actionbar"]["bar1"]["enabled"] = true
  E.db["actionbar"]["bar1"]["buttons"] = 12
  E.db["actionbar"]["bar1"]["buttonsPerRow"] = 12
  E.db["actionbar"]["bar1"]["buttonSize"] = 32
  E.db["actionbar"]["bar1"]["backdrop"] = true
  E.db["actionbar"]["bar1"]["hotkeyFont"] = "Montserrat-Bold"
  E.db["actionbar"]["bar1"]["countFont"] = "Montserrat-Bold"
  E.db["actionbar"]["bar1"]["hotkeyFontOutline"] = "NONE"
  E.db["actionbar"]["bar1"]["hotkeyFontSize"] = 12

  if WOW_PROJECT_ID == WOW_PROJECT_CLASSIC then -- Classic
      E.db["actionbar"]["bar1"]["buttonSpacing"] = 2
  end
  if WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC then -- TBCc
    E.db["actionbar"]["bar1"]["buttonSpacing"] = 2
  end
  if WOW_PROJECT_ID == WOW_PROJECT_MAINLINE then -- Retail
    E.db["actionbar"]["bar1"]["buttonSpacing"] = 2
  end

  -- Top Actionbar - BottomLeft
  E.db["actionbar"]["bar6"]["enabled"] = true
  E.db["actionbar"]["bar6"]["buttons"] = 12
  E.db["actionbar"]["bar6"]["buttonsPerRow"] = 12
  E.db["actionbar"]["bar6"]["buttonSize"] = 32
  E.db["actionbar"]["bar6"]["backdrop"] = true
  E.db["actionbar"]["bar6"]["hotkeyFont"] = "Montserrat-Bold"
  E.db["actionbar"]["bar6"]["countFont"] = "Montserrat-Bold"
  E.db["actionbar"]["bar6"]["hotkeyFontOutline"] = "NONE"
  E.db["actionbar"]["bar6"]["hotkeyFontSize"] = 12

  if WOW_PROJECT_ID == WOW_PROJECT_CLASSIC then -- Classic
      E.db["actionbar"]["bar6"]["buttonSpacing"] = 2
  end
  if WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC then -- TBCc
    E.db["actionbar"]["bar6"]["buttonSpacing"] = 2
  end
  if WOW_PROJECT_ID == WOW_PROJECT_MAINLINE then -- Retail
    E.db["actionbar"]["bar6"]["buttonSpacing"] = 2
  end

  -- Left Actionbar Cluster
  E.db["actionbar"]["bar3"]["enabled"] = true
  E.db["actionbar"]["bar3"]["buttons"] = 12
  E.db["actionbar"]["bar3"]["buttonsPerRow"] = 6
  E.db["actionbar"]["bar3"]["buttonSize"] = 25
  E.db["actionbar"]["bar3"]["inheritGlobalFade"] = true
  E.db["actionbar"]["bar3"]["backdrop"] = true
  E.db["actionbar"]["bar3"]["visibility"] = "[vehicleui] hide; [overridebar] hide; [petbattle] hide; show"
  E.db["actionbar"]["bar3"]["hotkeyFont"] = "Montserrat-Bold"
  E.db["actionbar"]["bar3"]["countFont"] = "Montserrat-Bold"
  E.db["actionbar"]["bar3"]["hotkeyFontOutline"] = "NONE"
  E.db["actionbar"]["bar3"]["hotkeyFontSize"] = 10


  if WOW_PROJECT_ID == WOW_PROJECT_CLASSIC then -- Classic
      E.db["actionbar"]["bar3"]["buttonSpacing"] = 1
  end
  if WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC then -- TBCc
    E.db["actionbar"]["bar3"]["buttonSpacing"] = 2
  end
  if WOW_PROJECT_ID == WOW_PROJECT_MAINLINE then -- Retail
    E.db["actionbar"]["bar3"]["buttonSpacing"] = 2
  end

  -- Right Actionbar Cluster - BottomRight
  E.db["actionbar"]["bar5"]["enabled"] = true
  E.db["actionbar"]["bar5"]["buttons"] = 12
  E.db["actionbar"]["bar2"]["mouseover"] = false
  E.db["actionbar"]["bar5"]["buttonsPerRow"] = 6
  E.db["actionbar"]["bar5"]["buttonSize"] = 25
  E.db["actionbar"]["bar5"]["inheritGlobalFade"] = true
  E.db["actionbar"]["bar5"]["backdrop"] = true
  E.db["actionbar"]["bar5"]["visibility"] = "[vehicleui] hide; [overridebar] hide; [petbattle] hide; show"
  E.db["actionbar"]["bar5"]["hotkeyFont"] = "Montserrat-Bold"
  E.db["actionbar"]["bar5"]["countFont"] = "Montserrat-Bold"
  E.db["actionbar"]["bar5"]["hotkeyFontOutline"] = "NONE"
  E.db["actionbar"]["bar5"]["hotkeyFontSize"] = 10


  if WOW_PROJECT_ID == WOW_PROJECT_CLASSIC then -- Classic
      E.db["actionbar"]["bar5"]["buttonSpacing"] = 1
  end
  if WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC then -- TBCc
    E.db["actionbar"]["bar5"]["buttonSpacing"] = 2
  end
  if WOW_PROJECT_ID == WOW_PROJECT_MAINLINE then -- Retail
    E.db["actionbar"]["bar5"]["buttonSpacing"] = 2
  end

  E.db["actionbar"]["bar2"]["enabled"] = true
  E.db["actionbar"]["bar2"]["buttons"] = 12
  E.db["actionbar"]["bar2"]["mouseover"] = true
  E.db["actionbar"]["bar2"]["inheritGlobalFade"] = true
  E.db["actionbar"]["bar2"]["backdrop"] = true
  E.db["actionbar"]["bar2"]["buttonsPerRow"] = 2
  E.db["actionbar"]["bar2"]["buttonSize"] = 25
  E.db["actionbar"]["bar2"]["hotkeyFont"] = "Montserrat-Bold"
  E.db["actionbar"]["bar2"]["countFont"] = "Montserrat-Bold"
  E.db["actionbar"]["bar2"]["hotkeyFontOutline"] = "NONE"
  E.db["actionbar"]["bar2"]["hotkeyFontSize"] = 12
  -- Disabled Actionbars
  E.db["actionbar"]["bar4"]["enabled"] = false
  E.db["actionbar"]["bar6"]["visibility"] = "[overridebar] hide; [petbattle] hide; show"

  -- Actionbar Options from import
  E.db["actionbar"]["fontColor"]["r"] = 0.68235294117647
  E.db["actionbar"]["fontColor"]["g"] = 0.68235294117647
  E.db["actionbar"]["fontColor"]["b"] = 0.68235294117647
  E.db["actionbar"]["flashAnimation"] = true
  E.db["actionbar"]["fontOutline"] = "NONE"
  E.db["actionbar"]["noRangeColor"]["r"] = 0.74901960784314
  E.db["actionbar"]["noRangeColor"]["g"] = 0.38039215686275
  E.db["actionbar"]["noRangeColor"]["b"] = 0.4156862745098
  E.db["actionbar"]["notUsableColor"]["r"] = 0.26274509803922
  E.db["actionbar"]["notUsableColor"]["g"] = 0.29803921568627
  E.db["actionbar"]["notUsableColor"]["b"] = 0.36862745098039
  E.db["actionbar"]["microbar"]["enabled"] = true
  E.db["actionbar"]["microbar"]["mouseover"] = true
  E.db["actionbar"]["font"] = "Montserrat-Bold"
  E.db["actionbar"]["noPowerColor"]["r"] = 0.36862745098039
  E.db["actionbar"]["noPowerColor"]["g"] = 0.56862745098039
  E.db["actionbar"]["noPowerColor"]["b"] = 0.67450980392157
  E.db["actionbar"]["usableColor"]["r"] = 0.92549019607843
  E.db["actionbar"]["usableColor"]["g"] = 0.93725490196078
  E.db["actionbar"]["usableColor"]["b"] = 0.95686274509804
  E.db["actionbar"]["transparent"] = true
  E.db["actionbar"]["addNewSpells"] = true
  E.db["actionbar"]["stanceBar"]["buttonSize"] = 25
  E.db["actionbar"]["stanceBar"]["buttonsPerRow"] = 1
  E.db["actionbar"]["stanceBar"]["hotkeyFont"] = "Montserrat-Bold"
  E.db["actionbar"]["stanceBar"]["hotkeyFontOutline"] = "NONE"
  E.db["actionbar"]["barPet"]["buttonsPerRow"] = 10
  E.db["actionbar"]["barPet"]["buttonSize"] = 25
  E.db["actionbar"]["barPet"]["point"] = "TOPLEFT"
end