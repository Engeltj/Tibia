-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 600ms
local combat6_Brush = createCombatObject()
setCombatParam(combat6_Brush, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat6_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat6_Brush,createCombatArea({{1},
{0},
{0},
{0},
{2},
{0},
{0},
{0},
{1}}))
function getDmg_Brush(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat6_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

-- Areas/Combat for 500ms
local combat5_Brush_4 = createCombatObject()
setCombatParam(combat5_Brush_4, COMBAT_PARAM_EFFECT, CONST_ME_FIREATTACK)
setCombatParam(combat5_Brush_4, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatArea(combat5_Brush_4,createCombatArea({{0, 1, 0},
{1, 0, 1},
{0, 1, 0},
{0, 1, 0},
{0, 1, 0},
{0, 2, 0},
{0, 1, 0},
{0, 1, 0},
{0, 1, 0},
{1, 0, 1},
{0, 1, 0}}))
function getDmg_Brush_4(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat5_Brush_4, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_4")local combat5_Brush = createCombatObject()
setCombatParam(combat5_Brush, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat5_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat5_Brush,createCombatArea({{1, 0, 1},
{0, 2, 0},
{1, 0, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat5_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

-- Areas/Combat for 100ms
local combat1_Brush_4 = createCombatObject()
setCombatParam(combat1_Brush_4, COMBAT_PARAM_EFFECT, CONST_ME_FIREATTACK)
setCombatParam(combat1_Brush_4, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatArea(combat1_Brush_4,createCombatArea({{0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0},
{1, 0, 1, 1, 1, 2, 1, 1, 1, 0, 1},
{0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0}}))
function getDmg_Brush_4(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat1_Brush_4, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_4")local combat1_Brush = createCombatObject()
setCombatParam(combat1_Brush, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat1_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat1_Brush,createCombatArea({{1, 0, 0, 0, 2, 0, 0, 0, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat1_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

-- Areas/Combat for 0ms
local combat0_Brush_3 = createCombatObject()
setCombatParam(combat0_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_FIREATTACK)
setCombatParam(combat0_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush_3,createCombatArea({{3}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat0_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")
local dfcombat0_Brush_3 = {CONST_ANI_FLAMMINGARROW,0,0}

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
	addEvent(RunPart,600,combat6_Brush,cid,var)
	addEvent(RunPart,500,combat5_Brush_4,cid,var)
	addEvent(RunPart,500,combat5_Brush,cid,var)
	addEvent(RunPart,100,combat1_Brush_4,cid,var)
	addEvent(RunPart,100,combat1_Brush,cid,var)
	RunPart(combat0_Brush_3,cid,var,dfcombat0_Brush_3,startPos)
	return true
end