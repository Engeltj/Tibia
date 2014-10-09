local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 11)


local i = 1
local heal = 0

function doDamage(cid, level, maglevel)
	local min_dmg = math.ceil((maglevel *2.7 + level*0.1)/(i*2))
	local max_dmg = math.ceil((maglevel *3.1 + level*0.1)/(i*2))
	local damage = math.random(min_dmg,max_dmg)
	heal = heal + damage
	--doPlayerSendTextMessage(cid, MESSAGE_EXPERIENCE, "", damage, COLOR_GREEN, getPlayerPosition(cid))
	return damage*-1,damage*-1
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "doDamage")


local function chainEffect(cid, creatures, hit_array, playerPos, j)
	if (#creatures > 0) and j < 10 then
		local hit = math.random(1, #creatures)
		local newpos = getThingPosition(creatures[hit])
		doSendDistanceShoot(playerPos,newpos,CONST_ANI_ENERGY)
		i=i+1
		doCombat(cid, combat, numberToVariant(creatures[hit]))
		table.insert(hit_array, creatures[hit])
		creatures = getCreatures(newpos, 2, hit_array)
		addEvent(chainEffect, 200, cid, creatures, hit_array, newpos, j+1)
	else
		doCreatureAddHealth(cid, heal-1)
	end
end

function onCastSpell(cid, var)
	local target = getCreatureTarget(cid) or 0
	if (target > 0) then
		i=1
		heal = 0
		local thingPos = getThingPosition(target)
		local creatures = getCreatures(thingPos, 2, {cid, target})
		doSendDistanceShoot(getPlayerPosition(cid),thingPos,CONST_ANI_ENERGY)
		addEvent(chainEffect, 200, cid, creatures, {cid, target}, thingPos, 1)
	end
	
	return doCombat(cid, combat, var)
	
end