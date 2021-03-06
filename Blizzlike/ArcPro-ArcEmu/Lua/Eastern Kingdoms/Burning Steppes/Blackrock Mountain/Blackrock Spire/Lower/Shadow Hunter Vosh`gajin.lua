--[[ ArcPro Speculation License - 
This software is provided as free and open source by the
team of The ArcPro Speculation Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Author: ArcPro Speculation
~~End of License... Please Stand By...
-- ArcPro Speculation, January 19, 2011 - 2013. ]]

function SHV_OnCombat(pUnit, Event)
	pUnit:RegisterEvent("CurseOfBlood", 7000, 0)
	pUnit:RegisterEvent("Hex", 14000, 0)
end

function Hex(pUnit, Event)
	if(pUnit:GetRandomPlayer(0) ~= nil) then
		pUnit:CastSpellOnTarget(16097)
	end
end

function CurseofBlood(pUnit, Event)
	pUnit:CastSpellOnTarget(16098)
end

function SHV_OnLeaveCombat(pUnit, Event)
	pUnit:RemoveEvents()
end

function SHV_OnDeath(pUnit, Event)
	pUnit:removeEvents()
end

RegisterUnitEvent(9236, 1, "SHV_OnCombat")
RegisterUnitEvent(9236, 2, "SHV_OnLeaveCombat")
RegisterUnitEvent(9236, 4, "SHV_OnDeath")