-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 500ms
local combat5_Brush = createCombatObject()
setCombatParam(combat5_Brush, COMBAT_PARAM_EFFECT, CONST_ME_GREEN_RINGS)
setCombatParam(combat5_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat5_Brush,createCombatArea({{1},
{2},
{1}}))
function getDmg_Brush(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat5_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")local combat5_Brush_2 = createCombatObject()
setCombatParam(combat5_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_YELLOW_RINGS)
setCombatParam(combat5_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat5_Brush_2,createCombatArea({{1, 2, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat5_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")local combat5_Brush_3 = createCombatObject()
setCombatParam(combat5_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_CARNIPHILA)
setCombatParam(combat5_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat5_Brush_3,createCombatArea({{1, 0, 1},
{0, 2, 0},
{1, 0, 1}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat5_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

-- Areas/Combat for 400ms
local combat4_Brush = createCombatObject()
setCombatParam(combat4_Brush, COMBAT_PARAM_EFFECT, CONST_ME_GREEN_RINGS)
setCombatParam(combat4_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat4_Brush,createCombatArea({{1, 0, 1},
{0, 0, 0},
{0, 2, 0},
{0, 0, 0},
{1, 0, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat4_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")local combat4_Brush_2 = createCombatObject()
setCombatParam(combat4_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_YELLOW_RINGS)
setCombatParam(combat4_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat4_Brush_2,createCombatArea({{1, 0, 0, 0, 1},
{0, 0, 2, 0, 0},
{1, 0, 0, 0, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat4_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 300ms
local combat3_Brush = createCombatObject()
setCombatParam(combat3_Brush, COMBAT_PARAM_EFFECT, CONST_ME_GREEN_RINGS)
setCombatParam(combat3_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat3_Brush,createCombatArea({{1, 0, 0, 0, 0, 0, 1},
{0, 0, 0, 2, 0, 0, 0},
{1, 0, 0, 0, 0, 0, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat3_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")local combat3_Brush_2 = createCombatObject()
setCombatParam(combat3_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_YELLOW_RINGS)
setCombatParam(combat3_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat3_Brush_2,createCombatArea({{1, 0, 1},
{0, 0, 0},
{0, 0, 0},
{0, 2, 0},
{0, 0, 0},
{0, 0, 0},
{1, 0, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat3_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 200ms
local combat2_Brush = createCombatObject()
setCombatParam(combat2_Brush, COMBAT_PARAM_EFFECT, CONST_ME_GREEN_RINGS)
setCombatParam(combat2_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat2_Brush,createCombatArea({{1},
{0},
{0},
{2},
{0},
{0},
{1}}))
function getDmg_Brush(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat2_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")local combat2_Brush_2 = createCombatObject()
setCombatParam(combat2_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_YELLOW_RINGS)
setCombatParam(combat2_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat2_Brush_2,createCombatArea({{1, 0, 0, 2, 0, 0, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat2_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 100ms
local combat1_Brush = createCombatObject()
setCombatParam(combat1_Brush, COMBAT_PARAM_EFFECT, CONST_ME_GREEN_RINGS)
setCombatParam(combat1_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat1_Brush,createCombatArea({{1, 0, 2, 0, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat1_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")local combat1_Brush_2 = createCombatObject()
setCombatParam(combat1_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_YELLOW_RINGS)
setCombatParam(combat1_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat1_Brush_2,createCombatArea({{1},
{0},
{2},
{0},
{1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat1_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

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
	addEvent(RunPart,500,combat5_Brush,cid,var)
	addEvent(RunPart,500,combat5_Brush_2,cid,var)
	addEvent(RunPart,500,combat5_Brush_3,cid,var)
	addEvent(RunPart,400,combat4_Brush,cid,var)
	addEvent(RunPart,400,combat4_Brush_2,cid,var)
	addEvent(RunPart,300,combat3_Brush,cid,var)
	addEvent(RunPart,300,combat3_Brush_2,cid,var)
	addEvent(RunPart,200,combat2_Brush,cid,var)
	addEvent(RunPart,200,combat2_Brush_2,cid,var)
	addEvent(RunPart,100,combat1_Brush,cid,var)
	addEvent(RunPart,100,combat1_Brush_2,cid,var)
	return true
end