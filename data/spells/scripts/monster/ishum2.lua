-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 600ms
local combat6_Brush_8 = createCombatObject()
setCombatParam(combat6_Brush_8, COMBAT_PARAM_EFFECT, CONST_ME_FIREATTACK)
setCombatParam(combat6_Brush_8, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatArea(combat6_Brush_8,createCombatArea({{0, 0, 1, 0, 1, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 0, 0, 1},
{0, 0, 0, 2, 0, 0, 0},
{1, 0, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 1, 0, 1, 0, 0}}))
function getDmg_Brush_8(cid, level, maglevel)
	return (0)*-1,(1)*-1 
end
setCombatCallback(combat6_Brush_8, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_8")local combat6_Brush_2 = createCombatObject()
setCombatParam(combat6_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_EXPLOSIONHIT)
setCombatParam(combat6_Brush_2, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatArea(combat6_Brush_2,createCombatArea({{0, 1, 1, 1, 0},
{1, 0, 1, 0, 1},
{1, 1, 2, 1, 1},
{1, 0, 1, 0, 1},
{0, 1, 1, 1, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (0),(1) 
end
setCombatCallback(combat6_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 400ms
local combat4_Brush_8 = createCombatObject()
setCombatParam(combat4_Brush_8, COMBAT_PARAM_EFFECT, CONST_ME_FIREATTACK)
setCombatParam(combat4_Brush_8, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatArea(combat4_Brush_8,createCombatArea({{1, 0, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 2, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 0, 0, 0, 1}}))
function getDmg_Brush_8(cid, level, maglevel)
	return (0)*-1,(1)*-1 
end
setCombatCallback(combat4_Brush_8, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_8")local combat4_Brush_3 = createCombatObject()
setCombatParam(combat4_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_EXPLOSIONHIT)
setCombatParam(combat4_Brush_3, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatArea(combat4_Brush_3,createCombatArea({{0, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 2, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 0}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (0)*-1,(1)*-1 
end
setCombatCallback(combat4_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")
local dfcombat4_Brush_3 = {CONST_ANI_FIRE,3,0,-3,0,0,3,0,-3}

-- Areas/Combat for 200ms
local combat2_Brush_8 = createCombatObject()
setCombatParam(combat2_Brush_8, COMBAT_PARAM_EFFECT, CONST_ME_FIREATTACK)
setCombatParam(combat2_Brush_8, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatArea(combat2_Brush_8,createCombatArea({{1, 0, 0, 0, 1},
{0, 0, 0, 0, 0},
{0, 0, 2, 0, 0},
{0, 0, 0, 0, 0},
{1, 0, 0, 0, 1}}))
function getDmg_Brush_8(cid, level, maglevel)
	return (0)*-1,(1)*-1 
end
setCombatCallback(combat2_Brush_8, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_8")

-- Areas/Combat for 0ms
local combat0_Brush_8 = createCombatObject()
setCombatParam(combat0_Brush_8, COMBAT_PARAM_EFFECT, CONST_ME_FIREATTACK)
setCombatParam(combat0_Brush_8, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatArea(combat0_Brush_8,createCombatArea({{1, 0, 1},
{0, 2, 0},
{1, 0, 1}}))
function getDmg_Brush_8(cid, level, maglevel)
	return (0)*-1,(1)*-1 
end
setCombatCallback(combat0_Brush_8, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_8")

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
	addEvent(RunPart,600,combat6_Brush_8,cid,var)
	addEvent(RunPart,600,combat6_Brush_2,cid,var)
	addEvent(RunPart,400,combat4_Brush_8,cid,var)
	addEvent(RunPart,400,combat4_Brush_3,cid,var,dfcombat4_Brush_3,startPos)
	addEvent(RunPart,200,combat2_Brush_8,cid,var)
	RunPart(combat0_Brush_8,cid,var)
	return true
end