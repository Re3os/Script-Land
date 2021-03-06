--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: WoTD Team; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function ShadowlordDeathwail_OnEnterCombat(Unit,Event)
	Unit:RegisterEvent("ShadowlordDeathwail_DeathCoil", 18000, 0)
	Unit:RegisterEvent("ShadowlordDeathwail_Fear", 24000, 0)
	Unit:RegisterEvent("ShadowlordDeathwail_FelFireball", 11000, 0)
	Unit:RegisterEvent("ShadowlordDeathwail_ShadowBolt", 5000, 0)
	Unit:RegisterEvent("ShadowlordDeathwail_ShadowBoltVolley", 7000, 0)
end

function ShadowlordDeathwail_DeathCoil(Unit,Event)
	Unit:FullCastSpellOnTarget(32709, Unit:GetClosestPlayer())
end

function ShadowlordDeathwail_Fear(Unit,Event)
	Unit:FullCastSpellOnTarget(27641, Unit:GetClosestPlayer())
end

function ShadowlordDeathwail_FelFireball(Unit,Event)
	Unit:FullCastSpellOnTarget(38312, Unit:GetClosestPlayer())
end

function ShadowlordDeathwail_ShadowBolt(Unit,Event)
	Unit:FullCastSpellOnTarget(12471, Unit:GetClosestPlayer())
end

function ShadowlordDeathwail_ShadowBoltVolley(Unit,Event)
	Unit:FullCastSpellOnTarget(15245, Unit:GetClosestPlayer())
end

function ShadowlordDeathwail_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function ShadowlordDeathwail_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(22006, 1, "ShadowlordDeathwail_OnEnterCombat")
RegisterUnitEvent(22006, 2, "ShadowlordDeathwail_OnLeaveCombat")
RegisterUnitEvent(22006, 4, "ShadowlordDeathwail_OnDied")