local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

function NoobTacoUI:SetupBags()
  E.db["bags"]["countFontSize"] = 14
  E.db["bags"]["itemLevelFont"] = "Montserrat-Bold"
  E.db["bags"]["split"]["player"] = true
  E.db["bags"]["itemLevelThreshold"] = 207
  E.db["bags"]["itemLevelFontSize"] = 14
  E.db["bags"]["junkDesaturate"] = true
  E.db["bags"]["itemLevelCustomColorEnable"] = true
  E.db["bags"]["bagSize"] = 40
  E.db["bags"]["junkIcon"] = true
  E.db["bags"]["bagWidth"] = 521
  E.db["bags"]["countFont"] = "Montserrat-Bold"
  E.db["bags"]["transparent"] = true
  E.db["bags"]["clearSearchOnClose"] = true
  E.db["bags"]["vendorGrays"]["details"] = true
  E.db["bags"]["vendorGrays"]["enable"] = true
  E.db["bags"]["bankSize"] = 40
  E.db["bags"]["scrapIcon"] = true
  E.db["bags"]["bankWidth"] = 692
  E.db["bags"]["moneyFormat"] = "FULL"
  E.db["bags"]["reverseSlots"] = true
  E.db["bags"]["showBindType"] = true
  E.db["bags"]["itemLevelCustomColor"]["r"] = 0.96862745098039
  E.db["bags"]["itemLevelCustomColor"]["b"] = 0.38823529411765
  E.db["bags"]["itemLevelFontOutline"] = "OUTLINE"
end