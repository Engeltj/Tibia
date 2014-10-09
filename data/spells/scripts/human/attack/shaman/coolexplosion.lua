-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 1500ms
local combat15_Brush_2 = createCombatObject()
setCombatParam(combat15_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_FIREAREA)
setCombatParam(combat15_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat15_Brush_2,createCombatArea({{1, 1, 1},
{1, 2, 1},
{1, 1, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat15_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 1400ms
local combat14_Brush_2 = createCombatObject()
setCombatParam(combat14_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_FIREAREA)
setCombatParam(combat14_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat14_Brush_2,createCombatArea({{3}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat14_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 1200ms
local combat12_Brush_2 = createCombatObject()
setCombatParam(combat12_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_FIREAREA)
setCombatParam(combat12_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat12_Brush_2,createCombatArea({{0, 1, 0, 0, 0},
{0, 0, 0, 0, 1},
{0, 0, 2, 0, 0},
{1, 0, 0, 0, 0},
{0, 0, 0, 1, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat12_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 1100ms
local combat11_Brush_2 = createCombatObject()
setCombatParam(combat11_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_FIREAREA)
setCombatParam(combat11_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat11_Brush_2,createCombatArea({{0, 0, 0, 1, 0},
{1, 0, 0, 0, 0},
{0, 0, 2, 0, 0},
{0, 0, 0, 0, 1},
{0, 1, 0, 0, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat11_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 1000ms
local combat10_Brush_2 = createCombatObject()
setCombatParam(combat10_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_FIREAREA)
setCombatParam(combat10_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat10_Brush_2,createCombatArea({{0, 0, 1, 0, 0},
{0, 0, 0, 0, 0},
{1, 0, 2, 0, 1},
{0, 0, 0, 0, 0},
{0, 0, 1, 0, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat10_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 900ms
local combat9_Brush_2 = createCombatObject()
setCombatParam(combat9_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_FIREAREA)
setCombatParam(combat9_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat9_Brush_2,createCombatArea({{0, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 2, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat9_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 400ms
local combat4_Brush_6 = createCombatObject()
setCombatParam(combat4_Brush_6, COMBAT_PARAM_EFFECT, CONST_ME_EXPLOSIONAREA)
setCombatParam(combat4_Brush_6, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat4_Brush_6,createCombatArea({{0, 1, 0, 1, 0},
{1, 1, 0, 1, 1},
{0, 0, 2, 0, 0},
{1, 1, 0, 1, 1},
{0, 1, 0, 1, 0}}))
function getDmg_Brush_6(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat4_Brush_6, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_6")

-- Areas/Combat for 200ms
local combat2_Brush_6 = createCombatObject()
setCombatParam(combat2_Brush_6, COMBAT_PARAM_EFFECT, CONST_ME_EXPLOSIONAREA)
setCombatParam(combat2_Brush_6, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat2_Brush_6,createCombatArea({{0, 0, 1, 0, 0},
{0, 0, 1, 0, 0},
{1, 1, 2, 1, 1},
{0, 0, 1, 0, 0},
{0, 0, 1, 0, 0}}))
function getDmg_Brush_6(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat2_Brush_6, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_6")

-- Areas/Combat for 0ms
local combat0_Brush_5 = createCombatObject()
setCombatParam(combat0_Brush_5, COMBAT_PARAM_EFFECT, CONST_ME_EXPLOSIONAREA)
setCombatParam(combat0_Brush_5, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush_5,createCombatArea({{0, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 2, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 0}}))
function getDmg_Brush_5(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat0_Brush_5, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_5")
local dfcombat0_Brush_5 = {CONST_ANI_EXPLOSION,0,3,-3,0,0,-3,3,0}

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
	addEvent(RunPart,1500,combat15_Brush_2,cid,var)
	addEvent(RunPart,1400,combat14_Brush_2,cid,var)
	addEvent(RunPart,1200,combat12_Brush_2,cid,var)
	addEvent(RunPart,1100,combat11_Brush_2,cid,var)
	addEvent(RunPart,1000,combat10_Brush_2,cid,var)
	addEvent(RunPart,900,combat9_Brush_2,cid,var)
	addEvent(RunPart,400,combat4_Brush_6,cid,var)
	addEvent(RunPart,200,combat2_Brush_6,cid,var)
	RunPart(combat0_Brush_5,cid,var,dfcombat0_Brush_5,startPos)
	return true
end