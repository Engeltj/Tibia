local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HEALING)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_HEARTS)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)

function onGetFormulaValues(cid, level, maglevel)
	return level*1.45 + 30, level*1.75 + 30
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(cid, var)
local chance = math.random(0,10)
	if chance == 3 then
		doCreatureSay(cid, "YOLO", TALKTYPE_ORANGE_1)
	end
	return doCombat(cid, combat, var)		
end

		
	