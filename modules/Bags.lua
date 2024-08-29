local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

-- CHANGELOG --------------------------------------------------------------------
--[[
    Version 1.5.0 - Bags improvements
        - Updated the font used for bags to "Poppins-SemiBold"
        - Adjusted the colors for item levels
        - Increased the font size for item levels
]]
function NoobTacoUI:SetupBags()
    E.db["bags"]["countFontSize"] = 14
    E.db["bags"]["itemLevelFont"] = "Poppins-SemiBold"
    E.db["bags"]["split"]["player"] = false
    E.db["bags"]["itemLevelCustomColorEnable"] = false
    E.db["bags"]["itemLevelThreshold"] = 1
    E.db["bags"]["itemLevelFontSize"] = 14
    E.db["bags"]["junkDesaturate"] = true
    E.db["bags"]["bagSize"] = 40
    E.db["bags"]["junkIcon"] = true
    E.db["bags"]["bagWidth"] = 521
    E.db["bags"]["countFont"] = "Poppins-SemiBold"
    E.db["bags"]["itemInfoFont"] = "Poppins-SemiBold"
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
    E.db["bags"]["itemLevelFontOutline"] = "OUTLINE"
end
