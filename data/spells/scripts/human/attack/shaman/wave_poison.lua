local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 8)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -1.5, 10, -2.6, 20)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 8)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -1.5, 10, -2.6, 20)

local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 8)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, -1.5, 10, -2.6, 20)

local combat4 = createCombatObject()
setCombatParam(combat4, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
setCombatParam(combat4, COMBAT_PARAM_EFFECT, 8)
setCombatFormula(combat4, COMBAT_FORMULA_LEVELMAGIC, -1.5, 10, -2.6, 20)


arr1 = {
{0, 0, 0, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 0, 0, 0, 1, 0, 0},
{0, 1, 0, 0, 0, 0, 0, 1, 0},
{1, 0, 0, 0, 0, 0, 0, 0, 1},
{1, 0, 0, 0, 3, 0, 0, 0, 1},
{1, 0, 0, 0, 0, 0, 0, 0, 1},
{0, 1, 0, 0, 0, 0, 0, 1, 0},
{0, 0, 1, 0, 0, 0, 1, 0, 0},
{0, 0, 0, 1, 1, 1, 0, 0, 0}
}

arr2 = {
{0, 0, 0, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 0, 0, 0, 1, 0, 0},
{0, 1, 0, 0, 0, 0, 0, 1, 0},
{0, 1, 0, 0, 3, 0, 0, 1, 0},
{0, 1, 0, 0, 0, 0, 0, 1, 0},
{0, 0, 1, 0, 0, 0, 1, 0, 0},
{0, 0, 0, 1, 1, 1, 0, 0, 0}
}

arr3 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 0, 1, 1, 0, 0},
{0, 0, 1, 0, 3, 0, 1, 0, 0},
{0, 0, 1, 1, 0, 1, 1, 0, 0},
{0, 0, 0, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0}
}

arr4 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 3, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0}
}


local area1 = createCombatArea(arr1)
local area2 = createCombatArea(arr2)
local area3 = createCombatArea(arr3)
local area4 = createCombatArea(arr4)

setCombatArea(combat1, area1)
setCombatArea(combat2, area2)
setCombatArea(combat3, area3)
setCombatArea(combat4, area4)



local function onCastSpell1(parameters)
	doCombat(parameters.cid, combat1, parameters.var)
end

local function onCastSpell2(parameters)
	doCombat(parameters.cid, combat2, parameters.var)
end

local function onCastSpell3(parameters)
	doCombat(parameters.cid, combat3, parameters.var)
end

local function onCastSpell4(parameters)
	doCombat(parameters.cid, combat4, parameters.var)
end






function onCastSpell(cid, var)
	local parameters = { cid = cid, var = var}
	addEvent(onCastSpell1, 0, parameters)
	addEvent(onCastSpell2, 100, parameters)
	addEvent(onCastSpell3, 350, parameters)
	addEvent(onCastSpell4, 475, parameters)
	return true
end