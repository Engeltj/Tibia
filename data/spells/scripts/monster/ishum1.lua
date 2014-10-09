-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 1000ms
local combat10_Brush_7 = createCombatObject()
setCombatParam(combat10_Brush_7, COMBAT_PARAM_EFFECT, CONST_ME_FIREWORK_YELLOW)
setCombatParam(combat10_Brush_7, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatArea(combat10_Brush_7,createCombatArea({{0, 1, 0},
{0, 0, 0},
{3, 0, 0},
{0, 0, 0},
{0, 0, 0},
{0, 0, 0},
{0, 0, 1}}))
function getDmg_Brush_7(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat10_Brush_7, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_7")local combat10_Brush_6 = createCombatObject()
setCombatParam(combat10_Brush_6, COMBAT_PARAM_EFFECT, CONST_ME_FIREWORK_RED)
setCombatParam(combat10_Brush_6, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatArea(combat10_Brush_6,createCombatArea({{0, 0, 0, 2},
{1, 0, 0, 0},
{0, 0, 0, 1}}))
function getDmg_Brush_6(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat10_Brush_6, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_6")

-- Areas/Combat for 800ms
local combat8_Brush_7 = createCombatObject()
setCombatParam(combat8_Brush_7, COMBAT_PARAM_EFFECT, CONST_ME_FIREWORK_YELLOW)
setCombatParam(combat8_Brush_7, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatArea(combat8_Brush_7,createCombatArea({{0, 0, 1, 2},
{0, 0, 0, 0},
{1, 0, 0, 0}}))
function getDmg_Brush_7(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat8_Brush_7, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_7")local combat8_Brush_6 = createCombatObject()
setCombatParam(combat8_Brush_6, COMBAT_PARAM_EFFECT, CONST_ME_FIREWORK_RED)
setCombatParam(combat8_Brush_6, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatArea(combat8_Brush_6,createCombatArea({{0, 0, 0, 1},
{2, 0, 0, 0},
{0, 0, 0, 0},
{0, 0, 0, 0},
{1, 0, 0, 0}}))
function getDmg_Brush_6(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat8_Brush_6, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_6")

-- Areas/Combat for 600ms
local combat6_Brush_7 = createCombatObject()
setCombatParam(combat6_Brush_7, COMBAT_PARAM_EFFECT, CONST_ME_FIREWORK_YELLOW)
setCombatParam(combat6_Brush_7, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatArea(combat6_Brush_7,createCombatArea({{1, 0, 0, 0},
{0, 0, 2, 0},
{0, 0, 0, 1}}))
function getDmg_Brush_7(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat6_Brush_7, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_7")local combat6_Brush_6 = createCombatObject()
setCombatParam(combat6_Brush_6, COMBAT_PARAM_EFFECT, CONST_ME_FIREWORK_RED)
setCombatParam(combat6_Brush_6, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatArea(combat6_Brush_6,createCombatArea({{1, 0, 0},
{0, 0, 0},
{0, 2, 1}}))
function getDmg_Brush_6(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat6_Brush_6, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_6")

-- Areas/Combat for 400ms
local combat4_Brush_7 = createCombatObject()
setCombatParam(combat4_Brush_7, COMBAT_PARAM_EFFECT, CONST_ME_FIREWORK_YELLOW)
setCombatParam(combat4_Brush_7, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatArea(combat4_Brush_7,createCombatArea({{1, 0, 0},
{2, 0, 0},
{0, 0, 0},
{0, 0, 0},
{0, 0, 1}}))
function getDmg_Brush_7(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat4_Brush_7, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_7")local combat4_Brush_6 = createCombatObject()
setCombatParam(combat4_Brush_6, COMBAT_PARAM_EFFECT, CONST_ME_FIREWORK_RED)
setCombatParam(combat4_Brush_6, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatArea(combat4_Brush_6,createCombatArea({{0, 2, 0},
{1, 0, 0},
{0, 0, 1}}))
function getDmg_Brush_6(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat4_Brush_6, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_6")

-- Areas/Combat for 200ms
local combat2_Brush_6 = createCombatObject()
setCombatParam(combat2_Brush_6, COMBAT_PARAM_EFFECT, CONST_ME_FIREWORK_RED)
setCombatParam(combat2_Brush_6, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatArea(combat2_Brush_6,createCombatArea({{1, 0, 2, 0, 0, 0},
{0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1}}))
function getDmg_Brush_6(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat2_Brush_6, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_6")local combat2_Brush_7 = createCombatObject()
setCombatParam(combat2_Brush_7, COMBAT_PARAM_EFFECT, CONST_ME_FIREWORK_YELLOW)
setCombatParam(combat2_Brush_7, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatArea(combat2_Brush_7,createCombatArea({{0, 0, 0, 0, 1},
{0, 0, 0, 0, 0},
{0, 2, 0, 0, 0},
{0, 0, 0, 0, 0},
{1, 0, 0, 0, 0}}))
function getDmg_Brush_7(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat2_Brush_7, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_7")

-- Areas/Combat for 0ms
local combat0_Brush_6 = createCombatObject()
setCombatParam(combat0_Brush_6, COMBAT_PARAM_EFFECT, CONST_ME_FIREWORK_RED)
setCombatParam(combat0_Brush_6, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatArea(combat0_Brush_6,createCombatArea({{0, 0, 2, 0, 1},
{0, 0, 0, 0, 0},
{0, 0, 0, 0, 0},
{1, 0, 0, 0, 0}}))
function getDmg_Brush_6(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat0_Brush_6, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_6")local combat0_Brush_7 = createCombatObject()
setCombatParam(combat0_Brush_7, COMBAT_PARAM_EFFECT, CONST_ME_FIREWORK_YELLOW)
setCombatParam(combat0_Brush_7, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatArea(combat0_Brush_7,createCombatArea({{1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0},
{0, 0, 2, 0, 0, 0},
{0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1}}))
function getDmg_Brush_7(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat0_Brush_7, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_7")

-- =============== CORE FUNCTIONS ===============
local function RunPart(c,cid,var,dirList,dirEmitPos,startDir) -- Part
	if (isCreature(cid)) then
		doCombat(cid, c, var)
		if (dirList ~= nil) then -- Emit distance effects
			local i = 2;
			while (i < #dirList) do
				if (startDir == 0) then -- N
					doSendDistanceShoot(dirEmitPos,{x=dirEmitPos.x-dirList[i],y=dirEmitPos.y-dirList[i+1],z=dirEmitPos.z},dirList[1])
				elseif (startDir == 2) then -- S
					doSendDistanceShoot(dirEmitPos,{x=dirEmitPos.x+dirList[i],y=dirEmitPos.y+dirList[i+1],z=dirEmitPos.z},dirList[1])
				elseif (startDir == 1) then -- E
					doSendDistanceShoot(dirEmitPos,{x=dirEmitPos.x+dirList[i+1],y=dirEmitPos.y+dirList[i],z=dirEmitPos.z},dirList[1])
				else -- W / Something weird happened
					doSendDistanceShoot(dirEmitPos,{x=dirEmitPos.x-dirList[i+1],y=dirEmitPos.y-dirList[i],z=dirEmitPos.z},dirList[1])
				end
				i = i + 2
			end		
		end
	end
end

function onCastSpell(cid, var)
	local startPos = getCreaturePosition(cid)
	local startDir = getCreatureLookDirection(cid)
	addEvent(RunPart,1000,combat10_Brush_7,cid,var)
	addEvent(RunPart,1000,combat10_Brush_6,cid,var)
	addEvent(RunPart,800,combat8_Brush_7,cid,var)
	addEvent(RunPart,800,combat8_Brush_6,cid,var)
	addEvent(RunPart,600,combat6_Brush_7,cid,var)
	addEvent(RunPart,600,combat6_Brush_6,cid,var)
	addEvent(RunPart,400,combat4_Brush_7,cid,var)
	addEvent(RunPart,400,combat4_Brush_6,cid,var)
	addEvent(RunPart,200,combat2_Brush_6,cid,var)
	addEvent(RunPart,200,combat2_Brush_7,cid,var)
	RunPart(combat0_Brush_6,cid,var)
	RunPart(combat0_Brush_7,cid,var)
	return true
end