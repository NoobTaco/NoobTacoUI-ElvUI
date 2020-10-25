local SimpleRareElite = CreateFrame('Frame', 'SimpleRareElite', UIParent)
local TargetFrame

-- Set Textures
local function SetSimpleRareElite(Texture)

	SimpleRareElite.Texture:SetTexture('Interface\\AddOns\\NoobTacoUI-Media\\Media\\Textures\\'..Texture)
	SimpleRareElite.Texture:SetTexCoord(0, 1, 0, 1)
	SimpleRareElite:ClearAllPoints()

	--Modern
	SimpleRareElite:SetSize(100, 100)
	SimpleRareElite:SetPoint('TOPRIGHT', TargetFrame, 'TOPRIGHT', 36, 8)

	SimpleRareElite:Show()

end

-- Load and Show Textures
local function CreateSimpleRareElite()

	SimpleRareElite:RegisterEvent('PLAYER_LOGIN')
	SimpleRareElite:RegisterEvent("ADDON_LOADED")

	SimpleRareElite:SetScript('OnEvent', function(self, event)
		self:Hide()

		if event == 'PLAYER_LOGIN' then

			TargetFrame = ElvUF_Target

			if not TargetFrame then
				return
			end

			SimpleRareElite:SetParent(TargetFrame)
			SimpleRareElite.Texture = SimpleRareElite:CreateTexture('ARTWORK')
			SimpleRareElite:SetFrameLevel(12)
			SimpleRareElite.Texture:SetAllPoints()

			self:RegisterEvent('PLAYER_TARGET_CHANGED')

		elseif event == "PLAYER_TARGET_CHANGED" then

			local TargetClass = UnitIsPlayer('target') and select(2, UnitClass('target')) or UnitClassification('target')

			if TargetClass == 'worldboss' then
				SetSimpleRareElite('worldboss.tga')
			elseif TargetClass == 'elite' then
				SetSimpleRareElite('elite.tga')
			elseif TargetClass == 'rare' then
				SetSimpleRareElite('rare.tga')
			elseif TargetClass == 'rareelite' then
				SetSimpleRareElite('rareelite.tga')
			end
		end
	end)
end

CreateSimpleRareElite();