-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 900ms
local combat9_Brush_2 = createCombatObject()
setCombatParam(combat9_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_POISONAREA)
setCombatParam(combat9_Brush_2, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
setCombatArea(combat9_Brush_2,createCombatArea({{1, 1, 1},
{1, 2, 1},
{1, 1, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
	min = -(level * 1.3 + maglevel * 1.5) * .7
	max = -(level * 1.7 + maglevel * 1.8) * 1.6
	return min, max
end

local condition = createConditionObject(CONDITION_POISON)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 25, 3000, -45)
setCombatCondition(combat9_Brush_2, condition)

setCombatCallback(combat9_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 800ms
local combat8_Brush_2 = createCombatObject()
setCombatParam(combat8_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_POISONAREA)
setCombatParam(combat8_Brush_2, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
setCombatArea(combat8_Brush_2,createCombatArea({{1, 1, 1, 1, 1},
{1, 0, 0, 0, 1},
{1, 0, 2, 0, 1},
{1, 0, 0, 0, 1},
{1, 1, 1, 1, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
	min = -(level * 1.3 + maglevel * 1.5) * .7
	max = -(level * 1.7 + maglevel * 1.8) * 1.6
	return min, max
end

local condition = createConditionObject(CONDITION_POISON)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 25, 3000, -45)
setCombatCondition(combat8_Brush_2, condition)

setCombatCallback(combat8_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 700ms
local combat7_Brush_2 = createCombatObject()
setCombatParam(combat7_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_POISONAREA)
setCombatParam(combat7_Brush_2, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
setCombatArea(combat7_Brush_2,createCombatArea({{0, 0, 1, 1, 1, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 0, 0, 1},
{1, 0, 0, 2, 0, 0, 1},
{1, 0, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 1, 1, 1, 0, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	min = -(level * 1.3 + maglevel * 1.5) * .7
	max = -(level * 1.7 + maglevel * 1.8) * 1.6
	return min, max
end

local condition = createConditionObject(CONDITION_POISON)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 25, 3000, -45)
setCombatCondition(combat7_Brush_2, condition)

setCombatCallback(combat7_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 600ms
local combat6_Brush_2 = createCombatObject()
setCombatParam(combat6_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_POISONAREA)
setCombatParam(combat6_Brush_2, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
setCombatArea(combat6_Brush_2,createCombatArea({{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0},
{1, 1, 0, 0, 0, 2, 0, 0, 0, 1, 1},
{0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	min = -(level * 1.3 + maglevel * 1.5) * .7
	max = -(level * 1.7 + maglevel * 1.8) * 1.6
	return min, max
end

local condition = createConditionObject(CONDITION_POISON)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 25, 3000, -45)
setCombatCondition(combat6_Brush_2, condition)

setCombatCallback(combat6_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 200ms
local combat2_Brush = createCombatObject()
setCombatParam(combat2_Brush, COMBAT_PARAM_EFFECT, CONST_ME_GREEN_RINGS)
setCombatParam(combat2_Brush, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
setCombatArea(combat2_Brush,createCombatArea({{1, 1, 0, 1, 1},
{1, 0, 0, 0, 1},
{0, 0, 2, 0, 0},
{1, 0, 0, 0, 1},
{1, 1, 0, 1, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat2_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

-- Areas/Combat for 100ms
local combat1_Brush = createCombatObject()
setCombatParam(combat1_Brush, COMBAT_PARAM_EFFECT, CONST_ME_GREEN_RINGS)
setCombatParam(combat1_Brush, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
setCombatArea(combat1_Brush,createCombatArea({{0, 0, 1, 0, 1, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 0, 0, 1},
{0, 0, 0, 2, 0, 0, 0},
{1, 0, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 1, 0, 1, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat1_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

-- Areas/Combat for 0ms
local combat0_Brush = createCombatObject()
setCombatParam(combat0_Brush, COMBAT_PARAM_EFFECT, CONST_ME_GREEN_RINGS)
setCombatParam(combat0_Brush, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
setCombatArea(combat0_Brush,createCombatArea({{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0},
{1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1},
{0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat0_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

-- =============== CORE FUNCTIONS ===============
local function RunPart(c,cid,var,dirList,dirEmitPos) -- Part
	if (isCreature(cid)) then
		doCombat(cid, c, var)
		if (dirList ~= nil) then -- Emit distance effects
			local i = 2;
			while (i < #dirList) do
				doSendDistanceShoot(dirEmitPos,{x=dirEmitPos.x-dirList[i],y=dirEmitPos.y-dirList[i+1],z=dirEmitPos.z},dirList[1])
				i = i + 2
			end		
		end
	end
end

function onCastSpell(cid, var)
	local startPos = getCreaturePosition(cid)
	addEvent(RunPart,900,combat9_Brush_2,cid,var)
	addEvent(RunPart,800,combat8_Brush_2,cid,var)
	addEvent(RunPart,700,combat7_Brush_2,cid,var)
	addEvent(RunPart,600,combat6_Brush_2,cid,var)
	addEvent(RunPart,200,combat2_Brush,cid,var)
	addEvent(RunPart,100,combat1_Brush,cid,var)
	RunPart(combat0_Brush,cid,var)
	return true
end