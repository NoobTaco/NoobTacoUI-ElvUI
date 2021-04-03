local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

function NoobTacoUI:SetupChat(wowver)
  E.db["chat"]["useCustomTimeColor"] = false
  E.db["chat"]["fontSize"] = 14
  E.db["chat"]["keywordSound"] = "Simon Chime"
  E.db["chat"]["tabFont"] = "Montserrat-Bold"
  E.db["chat"]["panelColor"]["a"] = 0.53608983755112
  E.db["chat"]["panelColor"]["r"] = 0.13725490196078
  E.db["chat"]["panelColor"]["g"] = 0.15294117647059
  E.db["chat"]["panelColor"]["b"] = 0.18823529411765
  E.db["chat"]["tabFontSize"] = 14
  E.db["chat"]["font"] = "Montserrat-Bold"
  E.db["chat"]["panelHeight"] = 200
  E.db["chat"]["editBoxPosition"] = "ABOVE_CHAT"
  E.db["chat"]["tabSelectorColor"]["r"] = 0.53333333333333
  E.db["chat"]["tabSelectorColor"]["g"] = 0.75294117647059
  E.db["chat"]["tabSelectorColor"]["b"] = 0.8156862745098
  E.db["chat"]["tabSelector"] = "BOX1"

  -- Chat Panel Width
  E.db["chat"]["panelWidth"] = 500

  -- If retail
  if wowver == 9 then -- Retail
      E.db["chat"]["panelWidth"] = 525
  end
end