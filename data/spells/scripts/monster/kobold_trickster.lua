-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 800ms
local combat8_Brush_4 = createCombatObject()
setCombatParam(combat8_Brush_4, COMBAT_PARAM_EFFECT, CONST_ME_HITBYPOISON)
setCombatParam(combat8_Brush_4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat8_Brush_4,createCombatArea({{0, 1, 0},
{1, 2, 1},
{0, 1, 0}}))
function getDmg_Brush_4(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat8_Brush_4, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_4")

-- Areas/Combat for 600ms
local combat6_Brush_4 = createCombatObject()
setCombatParam(combat6_Brush_4, COMBAT_PARAM_EFFECT, CONST_ME_HITBYPOISON)
setCombatParam(combat6_Brush_4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat6_Brush_4,createCombatArea({{0, 0, 1, 0, 0},
{0, 0, 0, 0, 0},
{1, 0, 2, 0, 1},
{0, 0, 0, 0, 0},
{0, 0, 1, 0, 0}}))
function getDmg_Brush_4(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat6_Brush_4, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_4")

-- Areas/Combat for 400ms
local combat4_Brush_4 = createCombatObject()
setCombatParam(combat4_Brush_4, COMBAT_PARAM_EFFECT, CONST_ME_HITBYPOISON)
setCombatParam(combat4_Brush_4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat4_Brush_4,createCombatArea({{0, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 2, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 0}}))
function getDmg_Brush_4(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat4_Brush_4, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_4")

-- Areas/Combat for 200ms
local combat2_Brush_4 = createCombatObject()
setCombatParam(combat2_Brush_4, COMBAT_PARAM_EFFECT, CONST_ME_HITBYPOISON)
setCombatParam(combat2_Brush_4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat2_Brush_4,createCombatArea({{0, 1, 0, 1, 0},
{1, 0, 0, 0, 1},
{0, 0, 2, 0, 0},
{1, 0, 0, 0, 1},
{0, 1, 0, 1, 0}}))
function getDmg_Brush_4(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat2_Brush_4, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_4")

-- Areas/Combat for 0ms
local combat0_Brush_4 = createCombatObject()
setCombatParam(combat0_Brush_4, COMBAT_PARAM_EFFECT, CONST_ME_HITBYPOISON)
setCombatParam(combat0_Brush_4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush_4,createCombatArea({{0, 1, 0},
{1, 2, 1},
{0, 1, 0}}))
function getDmg_Brush_4(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat0_Brush_4, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_4")

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
	addEvent(RunPart,800,combat8_Brush_4,cid,var)
	addEvent(RunPart,600,combat6_Brush_4,cid,var)
	addEvent(RunPart,400,combat4_Brush_4,cid,var)
	addEvent(RunPart,200,combat2_Brush_4,cid,var)
	RunPart(combat0_Brush_4,cid,var)
	return true
end