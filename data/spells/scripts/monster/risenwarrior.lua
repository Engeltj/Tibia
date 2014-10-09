-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 1000ms
local combat10_Brush_7 = createCombatObject()
setCombatParam(combat10_Brush_7, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatParam(combat10_Brush_7, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat10_Brush_7,createCombatArea({{3}}))
function getDmg_Brush_7(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat10_Brush_7, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_7")

-- Areas/Combat for 800ms
local combat8_Brush_7 = createCombatObject()
setCombatParam(combat8_Brush_7, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatParam(combat8_Brush_7, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat8_Brush_7,createCombatArea({{0, 1, 1, 1},
{1, 1, 2, 1},
{1, 1, 1, 1}}))
function getDmg_Brush_7(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat8_Brush_7, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_7")

-- Areas/Combat for 600ms
local combat6_Brush_7 = createCombatObject()
setCombatParam(combat6_Brush_7, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatParam(combat6_Brush_7, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat6_Brush_7,createCombatArea({{0, 1, 1, 1, 0},
{1, 0, 0, 0, 1},
{1, 0, 2, 0, 1},
{1, 0, 0, 0, 1},
{0, 1, 1, 1, 0}}))
function getDmg_Brush_7(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat6_Brush_7, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_7")

-- Areas/Combat for 400ms
local combat4_Brush_8 = createCombatObject()
setCombatParam(combat4_Brush_8, COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
setCombatParam(combat4_Brush_8, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat4_Brush_8,createCombatArea({{3}}))
function getDmg_Brush_8(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat4_Brush_8, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_8")

-- Areas/Combat for 200ms
local combat2_Brush_8 = createCombatObject()
setCombatParam(combat2_Brush_8, COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
setCombatParam(combat2_Brush_8, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat2_Brush_8,createCombatArea({{1, 1, 1},
{1, 2, 1},
{1, 1, 1}}))
function getDmg_Brush_8(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat2_Brush_8, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_8")

-- Areas/Combat for 0ms
local combat0_Brush_8 = createCombatObject()
setCombatParam(combat0_Brush_8, COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
setCombatParam(combat0_Brush_8, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush_8,createCombatArea({{0, 1, 1, 1, 0},
{1, 0, 0, 0, 1},
{1, 0, 2, 0, 1},
{1, 0, 0, 0, 1},
{0, 1, 1, 1, 0}}))
function getDmg_Brush_8(cid, level, maglevel)
	return (0)*-1,(0)*-1 
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
	addEvent(RunPart,1000,combat10_Brush_7,cid,var)
	addEvent(RunPart,800,combat8_Brush_7,cid,var)
	addEvent(RunPart,600,combat6_Brush_7,cid,var)
	addEvent(RunPart,400,combat4_Brush_8,cid,var)
	addEvent(RunPart,200,combat2_Brush_8,cid,var)
	RunPart(combat0_Brush_8,cid,var)
	return true
end