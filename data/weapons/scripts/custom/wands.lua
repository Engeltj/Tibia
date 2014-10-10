local poison = createCombatObject()
setCombatParam(poison, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
setCombatParam(poison, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_POISON)
setCombatParam(poison, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(poison, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(poison, COMBAT_PARAM_AGGRESSIVE, true)

local energy = createCombatObject()
setCombatParam(energy, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(energy, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)
setCombatParam(energy, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(energy, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(energy, COMBAT_PARAM_AGGRESSIVE, true)

local death = createCombatObject()
setCombatParam(death, COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
setCombatParam(death, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_DEATH)
setCombatParam(death, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(death, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(death, COMBAT_PARAM_AGGRESSIVE, true)

local earth = createCombatObject()
setCombatParam(earth, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatParam(earth, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_EARTH)
setCombatParam(earth, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(earth, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(earth, COMBAT_PARAM_AGGRESSIVE, true)

local smallearth = createCombatObject()
setCombatParam(smallearth, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatParam(smallearth, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLEARTH)
setCombatParam(smallearth, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(smallearth, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(smallearth, COMBAT_PARAM_AGGRESSIVE, true)

local fire = createCombatObject()
setCombatParam(fire, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatParam(fire, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_FIRE)
setCombatParam(fire, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(fire, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(fire, COMBAT_PARAM_AGGRESSIVE, true)

local ice = createCombatObject()
setCombatParam(ice, COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
setCombatParam(ice, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ICE)
setCombatParam(ice, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(ice, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(ice, COMBAT_PARAM_AGGRESSIVE, true)

local smallice = createCombatObject()
setCombatParam(smallice, COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
setCombatParam(smallice, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLICE)
setCombatParam(smallice, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(smallice, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(smallice, COMBAT_PARAM_AGGRESSIVE, true)

local holy = createCombatObject()
setCombatParam(holy, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatParam(holy, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_HOLY)
setCombatParam(holy, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(holy, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(holy, COMBAT_PARAM_AGGRESSIVE, true)

local default = createCombatObject()
setCombatParam(default, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(default, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_CAKE)
setCombatParam(default, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(default, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(default, COMBAT_PARAM_AGGRESSIVE, true)

function getDamage(cid, level, maglevel)
	local wand = getWand(cid)
	local attack = getItemAttack(wand) or 0
	local maximum =	0.085 * 1 * attack * maglevel + level/5 + attack
	return maximum
end

function posionValues(cid, level, maglevel)
	local max_dmg = getDamage(cid, level, maglevel)
	return 0,max_dmg*0.75*-1
end
function energyValues(cid, level, maglevel)
	local max_dmg = getDamage(cid, level, maglevel)
	return 0,max_dmg*0.75*-1
end
function deathValues(cid, level, maglevel)
	local max_dmg = getDamage(cid, level, maglevel)
	return 0,max_dmg*0.75*-1
end
function earthValues(cid, level, maglevel)
	local max_dmg = getDamage(cid, level, maglevel)
	return 0,max_dmg*0.75*-1
end
function fireValues(cid, level, maglevel)
	local max_dmg = getDamage(cid, level, maglevel)
	return 0,max_dmg*0.75*-1
end
function iceValues(cid, level, maglevel)
	local max_dmg = getDamage(cid, level, maglevel)
	return 0,max_dmg*0.75*-1
end
function smalliceValues(cid, level, maglevel)
	local max_dmg = getDamage(cid, level, maglevel)
	return 0,max_dmg*0.75*-1
end
function holyValues(cid, level, maglevel)
	local max_dmg = getDamage(cid, level, maglevel)
	return 0,max_dmg*0.75*-1
end
function defaultValues(cid, level, maglevel)
	local max_dmg = getDamage(cid, level, maglevel)
	return 0,max_dmg*0.75*-1
end

setCombatCallback(poison, CALLBACK_PARAM_LEVELMAGICVALUE, "posionValues")
setCombatCallback(energy, CALLBACK_PARAM_LEVELMAGICVALUE, "energyValues")
setCombatCallback(death, CALLBACK_PARAM_LEVELMAGICVALUE, "deathValues")
setCombatCallback(earth, CALLBACK_PARAM_LEVELMAGICVALUE, "earthValues")
setCombatCallback(fire, CALLBACK_PARAM_LEVELMAGICVALUE, "fireValues")
setCombatCallback(ice, CALLBACK_PARAM_LEVELMAGICVALUE, "iceValues")
setCombatCallback(smallice, CALLBACK_PARAM_LEVELMAGICVALUE, "smalliceValues")
setCombatCallback(holy, CALLBACK_PARAM_LEVELMAGICVALUE, "holyValues")
setCombatCallback(default, CALLBACK_PARAM_LEVELMAGICVALUE, "defaultValues")

function onUseWeapon(cid, var)
	local wep = getPlayerWeapon(cid) or 0
	local info = getItemInfo(wep.itemid)
	--print (info.shootType)
	if (info.shootType == CONST_ANI_POISON) then
		return doCombat(cid, poison, var)
	elseif (info.shootType == CONST_ANI_ENERGY) then
		return doCombat(cid, energy, var)	
	elseif (info.shootType == CONST_ANI_FIRE) then
		return doCombat(cid, fire, var)	
	elseif (info.shootType == CONST_ANI_ICE) then
		return doCombat(cid, ice, var)
	elseif (info.shootType == CONST_ANI_SMALLICE) then
		return doCombat(cid, smallice, var)
	elseif (info.shootType == CONST_ANI_DEATH) then
		return doCombat(cid, death, var)
	elseif (info.shootType == CONST_ANI_EARTH) then
		return doCombat(cid, earth, var)
	elseif (info.shootType == CONST_ANI_SMALLEARTH) then
		return doCombat(cid, smallearth, var)
	else
		return doCombat(cid, default, var)
	end
	
	
end