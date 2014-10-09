-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 500ms
local combat5_Brush_10 = createCombatObject()
setCombatParam(combat5_Brush_10, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)
setCombatParam(combat5_Brush_10, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat5_Brush_10,createCombatArea({{0, 1, 1, 1},
{2, 1, 0, 1},
{0, 1, 1, 1}}))
function getDmg_Brush_10(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat5_Brush_10, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_10")

-- Areas/Combat for 400ms
local combat4_Brush_12 = createCombatObject()
setCombatParam(combat4_Brush_12, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat4_Brush_12, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_DEATH)
setCombatParam(combat4_Brush_12, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat4_Brush_12,createCombatArea({{2, 0, 1}}))
function getDmg_Brush_12(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat4_Brush_12, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_12")
local dfcombat4_Brush_12 = {CONST_ANI_DEATH,2,0}local combat4_Brush_10 = createCombatObject()
setCombatParam(combat4_Brush_10, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)
setCombatParam(combat4_Brush_10, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat4_Brush_10,createCombatArea({{1, 1, 1},
{1, 0, 1},
{0, 1, 0},
{0, 2, 0}}))
function getDmg_Brush_10(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat4_Brush_10, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_10")

-- Areas/Combat for 300ms
local combat3_Brush_12 = createCombatObject()
setCombatParam(combat3_Brush_12, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat3_Brush_12, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_DEATH)
setCombatParam(combat3_Brush_12, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat3_Brush_12,createCombatArea({{1},
{0},
{2}}))
function getDmg_Brush_12(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat3_Brush_12, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_12")
local dfcombat3_Brush_12 = {CONST_ANI_DEATH,0,-2}local combat3_Brush_10 = createCombatObject()
setCombatParam(combat3_Brush_10, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)
setCombatParam(combat3_Brush_10, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat3_Brush_10,createCombatArea({{1, 1, 1, 0},
{1, 0, 1, 2},
{1, 1, 1, 0}}))
function getDmg_Brush_10(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat3_Brush_10, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_10")

-- Areas/Combat for 200ms
local combat2_Brush_12 = createCombatObject()
setCombatParam(combat2_Brush_12, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat2_Brush_12, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_DEATH)
setCombatParam(combat2_Brush_12, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat2_Brush_12,createCombatArea({{1, 0, 2}}))
function getDmg_Brush_12(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat2_Brush_12, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_12")
local dfcombat2_Brush_12 = {CONST_ANI_DEATH,-2,0}local combat2_Brush_10 = createCombatObject()
setCombatParam(combat2_Brush_10, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)
setCombatParam(combat2_Brush_10, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat2_Brush_10,createCombatArea({{0, 2, 0},
{0, 1, 0},
{1, 0, 1},
{1, 1, 1}}))
function getDmg_Brush_10(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat2_Brush_10, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_10")

-- Areas/Combat for 100ms
local combat1_Brush_12 = createCombatObject()
setCombatParam(combat1_Brush_12, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat1_Brush_12, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_DEATH)
setCombatParam(combat1_Brush_12, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat1_Brush_12,createCombatArea({{2},
{0},
{1}}))
function getDmg_Brush_12(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat1_Brush_12, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_12")
local dfcombat1_Brush_12 = {CONST_ANI_DEATH,0,2}

-- Areas/Combat for 0ms
local combat0_Brush_12 = createCombatObject()
setCombatParam(combat0_Brush_12, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat0_Brush_12, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_DEATH)
setCombatParam(combat0_Brush_12, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush_12,createCombatArea({{3}}))
function getDmg_Brush_12(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat0_Brush_12, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_12")
local dfcombat0_Brush_12 = {CONST_ANI_DEATH,0,0}

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
	addEvent(RunPart,500,combat5_Brush_10,cid,var)
	addEvent(RunPart,400,combat4_Brush_12,cid,var,dfcombat4_Brush_12,startPos)
	addEvent(RunPart,400,combat4_Brush_10,cid,var)
	addEvent(RunPart,300,combat3_Brush_12,cid,var,dfcombat3_Brush_12,startPos)
	addEvent(RunPart,300,combat3_Brush_10,cid,var)
	addEvent(RunPart,200,combat2_Brush_12,cid,var,dfcombat2_Brush_12,startPos)
	addEvent(RunPart,200,combat2_Brush_10,cid,var)
	addEvent(RunPart,100,combat1_Brush_12,cid,var,dfcombat1_Brush_12,startPos)
	RunPart(combat0_Brush_12,cid,var,dfcombat0_Brush_12,startPos)
	return true
end