local north = {
	{
		{0, 0, 1, 0, 0},
		{0, 1, 2, 1, 0}
	},
	{
		{0, 1, 1, 1, 0},
		{1, 0, 2, 0, 1}
	},
	{
		{0, 0, 1, 1, 1, 0, 0},
		{0, 1, 0, 0, 0, 1, 0},
		{1, 0, 0, 2, 0, 0, 1}
	}
}

local east = {
	{
		{0, 0, 1, 0, 0},
		{0, 0, 2, 1, 0},
		{0, 0, 1, 0, 0}
	},
	{
		{0, 0, 1, 0, 0},
		{0, 0, 0, 1, 0},
		{0, 0, 2, 1, 0},
		{0, 0, 0, 1, 0},
		{0, 0, 1, 0, 0}
	},
	{
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 0, 0, 1, 0, 0},
		{0, 0, 0, 0, 0, 1, 0},
		{0, 0, 0, 2, 0, 1, 0},
		{0, 0, 0, 0, 0, 1, 0},
		{0, 0, 0, 0, 1, 0, 0},
		{0, 0, 0, 1, 0, 0, 0}
	}
}

local south = {
	{
		{0, 1, 2, 1, 0},
		{0, 0, 1, 0, 0}
	},
	{
		{1, 0, 2, 0, 1},
		{0, 1, 1, 1, 0}
	},
	{
		{1, 0, 0, 2, 0, 0, 1},
		{0, 1, 0, 0, 0, 1, 0},
		{0, 0, 1, 1, 1, 0, 0}
	}
}

local west = {
	{
		{0, 0, 1, 0, 0},
		{0, 1, 2, 0, 0},
		{0, 0, 1, 0, 0}
	},
	{
		{0, 0, 1, 0, 0},
		{0, 1, 0, 0, 0},
		{0, 1, 2, 0, 0},
		{0, 1, 0, 0, 0},
		{0, 0, 1, 0, 0}
	},
	{
		{0, 0, 0, 1, 0, 0, 0},
		{0, 0, 1, 0, 0, 0, 0},
		{0, 1, 0, 0, 0, 0, 0},
		{0, 1, 0, 2, 0, 0, 0},
		{0, 1, 0, 0, 0, 0, 0},
		{0, 0, 1, 0, 0, 0, 0},
		{0, 0, 0, 1, 0, 0, 0}
	}
}

local area = {}
local num = 3
-- Areas/Combat for 100ms
local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_LOSEENERGY)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat,createCombatArea(north[num]))
setAttackFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, 0, 0, 0)


local function RunPart(c,cid,var)
	local dir = getCreatureLookDirection(cid)
	num = c
	if dir == 1 then
		area = north[c]
	elseif dir == 2 then
		area = east[c]
	elseif dir == 3 then
		area = south[c]
	elseif dir == 4 then
		area = west[c]
	end
	
	doCombat(cid, combat, var)
end

function onCastSpell(cid, var)
	addEvent(RunPart,100,1,cid,var)
	addEvent(RunPart,200,2,cid,var)
	addEvent(RunPart,400,3,cid,var)
	return true
end