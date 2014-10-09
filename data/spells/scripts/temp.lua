local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_GREEN_RINGS)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_POISON)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
 


-- local condition = createConditionObject(CONDITION_POISON)
-- setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
-- addDamageCondition(condition, 10, 2000, -1)
-- setCombatCondition(combat, condition)
 

function onGetFormulaValues(cid, level, maglevel)
	mina = -((maglevel+1)*(level*5))
	maxa = -((maglevel+1)*(level*5))
	return mina, maxa
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")


function onCastSpell(cid, var)
	-- dotmin = ((55+1)*(getPlayerLevel(cid)*30))
	-- dotmax = ((55+1)*(getPlayerLevel(cid)*50))
	-- local poison = createConditionObject(CONDITION_POISON)
	-- setConditionParam(poison, CONDITION_PARAM_DELAYED, 1)
	-- addDamageCondition(poison, 30, 1000, -math.random(dotmin, dotmax))
	-- setCombatCondition(combat, poison)
	
	--poison = nil
	--collectgarbage()
	return doCombat(cid, combat, var)
end