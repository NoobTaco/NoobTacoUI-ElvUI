local NoobTacoUI, E, L, V, P, G = unpack(select(2, ...))

function NoobTacoUI:SetupCooldowns()
  -- COOLDOWN --------------------------------------------------------------------
  E.db["cooldown"]["secondsColor"]["r"] = 0.92156862745098
  E.db["cooldown"]["secondsColor"]["g"] = 0.79607843137255
  E.db["cooldown"]["secondsColor"]["b"] = 0.54509803921569
  E.db["cooldown"]["daysColor"]["r"] = 0.36862745098039
  E.db["cooldown"]["daysColor"]["g"] = 0.50588235294118
  E.db["cooldown"]["daysColor"]["b"] = 0.67450980392157
  E.db["cooldown"]["expiringColor"]["r"] = 0.74901960784314
  E.db["cooldown"]["expiringColor"]["g"] = 0.38039215686275
  E.db["cooldown"]["expiringColor"]["b"] = 0.4156862745098
  E.db["cooldown"]["fonts"]["enable"] = true
  E.db["cooldown"]["fonts"]["font"] = "Montserrat-Bold"
  E.db["cooldown"]["hoursColor"]["r"] = 0.53333333333333
  E.db["cooldown"]["hoursColor"]["g"] = 0.75294117647059
  E.db["cooldown"]["hoursColor"]["b"] = 0.8156862745098
end