local addonName, Engine = ...
local NoobTacoUIElv = Engine.NoobTacoUIElv
local E, L, V, P, G = Engine.E, Engine.L, Engine.V, Engine.P, Engine.G

function NoobTacoUIElv:SetupIntegration(layout, wowver)
  NoobTacoUIElv:IntegrationBag()
  NoobTacoUIElv:XIV_Databar()
  NoobTacoUIElv:CellIntegration()
  NoobTacoUIElv:PlatterIntegration()
end
