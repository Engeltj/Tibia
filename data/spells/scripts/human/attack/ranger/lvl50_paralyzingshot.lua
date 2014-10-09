-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 0ms
local combat0_Brush_2 = createCombatObject()
setCombatParam(combat0_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_SOUND_RED)
setCombatParam(combat0_Brush_2, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ONYXARROW)
setCombatParam(combat0_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush_2,createCombatArea({{3}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (level*.8+maglevel * 2)  * -.8, (level*1.5+maglevel * 3.5)  * -1 
end
setCombatCallback(combat0_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

local condition = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 4000)
setConditionFormula(condition, -.8, 0, -.95, 0)
setCombatCondition(combat0_Brush_2, condition)


local dfcombat0_Brush_2 = {CONST_ANI_ONYXARROW,0,0}

-- Areas/Combat for 300ms
local combat3_Brush = createCombatObject()
setCombatParam(combat3_Brush, COMBAT_PARAM_EFFECT, CONST_ME_SOUND_RED)
setCombatParam(combat3_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat3_Brush,createCombatArea({{1, 1, 1},
{1, 2, 1},
{1, 1, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (level*.8+maglevel * 2)  * -.8, (level*1.5+maglevel * 3.5)  * -1 
end
setCombatCallback(combat3_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

local condition = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 4000)
setConditionFormula(condition, -.8, 0, -.95, 0)
setCombatCondition(combat3_Brush, condition)

-- Areas/Combat for 600ms
local combat6_Brush = createCombatObject()
setCombatParam(combat6_Brush, COMBAT_PARAM_EFFECT, CONST_ME_SOUND_RED)
setCombatParam(combat6_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat6_Brush,createCombatArea({{0, 1, 1, 1, 0},
{1, 0, 0, 0, 1},
{1, 0, 2, 0, 1},
{1, 0, 0, 0, 1},
{0, 1, 1, 1, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (level*.8+maglevel * 2)  * -.8, (level*1.5+maglevel * 3.5)  * -1 
end
setCombatCallback(combat6_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

local condition = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 4000)
setConditionFormula(condition, -.8, 0, -.95, 0)
setCombatCondition(combat6_Brush, condition)

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
	RunPart(combat0_Brush_2,cid,var,dfcombat0_Brush_2,startPos)
	addEvent(RunPart,300,combat3_Brush,cid,var)
	addEvent(RunPart,600,combat6_Brush,cid,var)
	return true
end