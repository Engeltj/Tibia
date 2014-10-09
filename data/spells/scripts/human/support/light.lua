local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)

local condition = createConditionObject(CONDITION_LIGHT)
setConditionParam(condition, CONDITION_PARAM_LIGHT_LEVEL, 10)
setConditionParam(condition, CONDITION_PARAM_LIGHT_COLOR, COLOR_DARKYELLOW)
setConditionParam(condition, CONDITION_PARAM_TICKS, 5*60*1000) --5 minutes(time in ms)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end