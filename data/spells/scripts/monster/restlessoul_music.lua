-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 400ms
local combat4_Brush_3 = createCombatObject()
setCombatParam(combat4_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_SOUND_RED)
setCombatParam(combat4_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat4_Brush_3,createCombatArea({{1},
{0},
{0},
{2}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (0),(0) 
end
setCombatCallback(combat4_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")local combat4_Brush_4 = createCombatObject()
setCombatParam(combat4_Brush_4, COMBAT_PARAM_EFFECT, CONST_ME_SOUND_YELLOW)
setCombatParam(combat4_Brush_4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat4_Brush_4,createCombatArea({{2},
{0},
{0},
{1}}))
function getDmg_Brush_4(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat4_Brush_4, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_4")local combat4_Brush = createCombatObject()
setCombatParam(combat4_Brush, COMBAT_PARAM_EFFECT, CONST_ME_SOUND_WHITE)
setCombatParam(combat4_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat4_Brush,createCombatArea({{2, 0, 0, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat4_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")local combat4_Brush_5 = createCombatObject()
setCombatParam(combat4_Brush_5, COMBAT_PARAM_EFFECT, CONST_ME_SOUND_GREEN)
setCombatParam(combat4_Brush_5, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat4_Brush_5,createCombatArea({{1, 0, 0, 2}}))
function getDmg_Brush_5(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat4_Brush_5, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_5")local combat4_Brush_6 = createCombatObject()
setCombatParam(combat4_Brush_6, COMBAT_PARAM_EFFECT, CONST_ME_SOUND_PURPLE)
setCombatParam(combat4_Brush_6, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat4_Brush_6,createCombatArea({{0, 1, 0, 1, 0},
{1, 0, 0, 0, 1},
{0, 0, 2, 0, 0},
{1, 0, 0, 0, 1},
{0, 1, 0, 1, 0}}))
function getDmg_Brush_6(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat4_Brush_6, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_6")

-- Areas/Combat for 200ms
local combat2_Brush = createCombatObject()
setCombatParam(combat2_Brush, COMBAT_PARAM_EFFECT, CONST_ME_SOUND_WHITE)
setCombatParam(combat2_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat2_Brush,createCombatArea({{1, 0},
{0, 0},
{2, 0},
{0, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat2_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")local combat2_Brush_4 = createCombatObject()
setCombatParam(combat2_Brush_4, COMBAT_PARAM_EFFECT, CONST_ME_SOUND_YELLOW)
setCombatParam(combat2_Brush_4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat2_Brush_4,createCombatArea({{0, 2, 0, 1},
{1, 0, 0, 0}}))
function getDmg_Brush_4(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat2_Brush_4, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_4")local combat2_Brush_5 = createCombatObject()
setCombatParam(combat2_Brush_5, COMBAT_PARAM_EFFECT, CONST_ME_SOUND_GREEN)
setCombatParam(combat2_Brush_5, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat2_Brush_5,createCombatArea({{1, 0},
{0, 2},
{0, 0},
{0, 1}}))
function getDmg_Brush_5(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat2_Brush_5, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_5")local combat2_Brush_3 = createCombatObject()
setCombatParam(combat2_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_SOUND_RED)
setCombatParam(combat2_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat2_Brush_3,createCombatArea({{0, 0, 0, 1},
{1, 0, 2, 0}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (0),(0) 
end
setCombatCallback(combat2_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

-- Areas/Combat for 0ms
local combat0_Brush_3 = createCombatObject()
setCombatParam(combat0_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_SOUND_RED)
setCombatParam(combat0_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush_3,createCombatArea({{2},
{1}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (0),(0) 
end
setCombatCallback(combat0_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")local combat0_Brush_4 = createCombatObject()
setCombatParam(combat0_Brush_4, COMBAT_PARAM_EFFECT, CONST_ME_SOUND_YELLOW)
setCombatParam(combat0_Brush_4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush_4,createCombatArea({{1},
{2}}))
function getDmg_Brush_4(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat0_Brush_4, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_4")local combat0_Brush_5 = createCombatObject()
setCombatParam(combat0_Brush_5, COMBAT_PARAM_EFFECT, CONST_ME_SOUND_GREEN)
setCombatParam(combat0_Brush_5, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush_5,createCombatArea({{2, 1}}))
function getDmg_Brush_5(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat0_Brush_5, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_5")local combat0_Brush = createCombatObject()
setCombatParam(combat0_Brush, COMBAT_PARAM_EFFECT, CONST_ME_SOUND_WHITE)
setCombatParam(combat0_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush,createCombatArea({{1, 2}}))
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
	addEvent(RunPart,400,combat4_Brush_3,cid,var)
	addEvent(RunPart,400,combat4_Brush_4,cid,var)
	addEvent(RunPart,400,combat4_Brush,cid,var)
	addEvent(RunPart,400,combat4_Brush_5,cid,var)
	addEvent(RunPart,400,combat4_Brush_6,cid,var)
	addEvent(RunPart,200,combat2_Brush,cid,var)
	addEvent(RunPart,200,combat2_Brush_4,cid,var)
	addEvent(RunPart,200,combat2_Brush_5,cid,var)
	addEvent(RunPart,200,combat2_Brush_3,cid,var)
	RunPart(combat0_Brush_3,cid,var)
	RunPart(combat0_Brush_4,cid,var)
	RunPart(combat0_Brush_5,cid,var)
	RunPart(combat0_Brush,cid,var)
	return true
end