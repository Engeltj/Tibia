-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 0ms
local combat0_Brush = createCombatObject()
setCombatParam(combat0_Brush, COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
setCombatParam(combat0_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush,createCombatArea({{1, 1, 1},
{1, 2, 1},
{1, 1, 1}}))


-- Areas/Combat for 100ms
local combat1_Brush = createCombatObject()
setCombatParam(combat1_Brush, COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
setCombatParam(combat1_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat1_Brush,createCombatArea({{0, 1, 1, 1, 0},
{1, 0, 0, 0, 1},
{1, 0, 2, 0, 1},
{1, 0, 0, 0, 1},
{0, 1, 1, 1, 0}}))


-- Areas/Combat for 200ms
local combat2_Brush = createCombatObject()
setCombatParam(combat2_Brush, COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
setCombatParam(combat2_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat2_Brush,createCombatArea({{0, 1, 1, 1, 1, 1, 0},
{1, 1, 0, 0, 0, 1, 1},
{1, 0, 0, 0, 0, 0, 1},
{1, 0, 0, 2, 0, 0, 1},
{1, 0, 0, 0, 0, 0, 1},
{1, 1, 0, 0, 0, 1, 1},
{0, 1, 1, 1, 1, 1, 0}}))


-- Areas/Combat for 300ms
local combat3_Brush = createCombatObject()
setCombatParam(combat3_Brush, COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
setCombatParam(combat3_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat3_Brush,createCombatArea({{0, 1, 1, 1, 1, 1, 1, 1, 0},
{1, 1, 0, 0, 0, 0, 0, 1, 1},
{1, 0, 0, 0, 0, 0, 0, 0, 1},
{1, 0, 0, 0, 0, 0, 0, 0, 1},
{1, 0, 0, 0, 2, 0, 0, 0, 1},
{1, 0, 0, 0, 0, 0, 0, 0, 1},
{1, 0, 0, 0, 0, 0, 0, 0, 1},
{1, 1, 0, 0, 0, 0, 0, 1, 1},
{0, 1, 1, 1, 1, 1, 1, 1, 0}}))


-- Areas/Combat for 1000ms
local combat10_Brush = createCombatObject()
setCombatParam(combat10_Brush, COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
setCombatParam(combat10_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat10_Brush,createCombatArea({{0, 1, 1, 1, 1, 1, 1, 1, 0},
{1, 1, 0, 0, 0, 0, 0, 1, 1},
{1, 0, 0, 0, 0, 0, 0, 0, 1},
{1, 0, 0, 0, 0, 0, 0, 0, 1},
{1, 0, 0, 0, 2, 0, 0, 0, 1},
{1, 0, 0, 0, 0, 0, 0, 0, 1},
{1, 0, 0, 0, 0, 0, 0, 0, 1},
{1, 1, 0, 0, 0, 0, 0, 1, 1},
{0, 1, 1, 1, 1, 1, 1, 1, 0}}))


-- Areas/Combat for 1200ms
local combat12_Brush = createCombatObject()
setCombatParam(combat12_Brush, COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
setCombatParam(combat12_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat12_Brush,createCombatArea({{0, 1, 1, 1, 1, 1, 0},
{1, 1, 0, 0, 0, 1, 1},
{1, 0, 0, 0, 0, 0, 1},
{1, 0, 0, 2, 0, 0, 1},
{1, 0, 0, 0, 0, 0, 1},
{1, 1, 0, 0, 0, 1, 1},
{0, 1, 1, 1, 1, 1, 0}}))


-- Areas/Combat for 1400ms
local combat14_Brush = createCombatObject()
setCombatParam(combat14_Brush, COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
setCombatParam(combat14_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat14_Brush,createCombatArea({{0, 1, 1, 1, 0},
{1, 0, 0, 0, 1},
{1, 0, 2, 0, 1},
{1, 0, 0, 0, 1},
{0, 1, 1, 1, 0}}))


-- Areas/Combat for 1600ms
local combat16_Brush = createCombatObject()
setCombatParam(combat16_Brush, COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
setCombatParam(combat16_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat16_Brush,createCombatArea({{1, 1, 1},
{1, 2, 1},
{1, 1, 1}}))


-- Areas/Combat for 2500ms
local combat25_Brush_2 = createCombatObject()
setCombatParam(combat25_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat25_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat25_Brush_2,createCombatArea({{1},
{1},
{2},
{1},
{1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (200)*-1,(800)*-1 
end
setCombatCallback(combat25_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 2600ms
local combat26_Brush_2 = createCombatObject()
setCombatParam(combat26_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat26_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat26_Brush_2,createCombatArea({{1, 1, 2, 1, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (200)*-1,(800)*-1 
end
setCombatCallback(combat26_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 2700ms
local combat27_Brush_2 = createCombatObject()
setCombatParam(combat27_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat27_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat27_Brush_2,createCombatArea({{0, 0, 0, 0, 1},
{0, 0, 0, 1, 0},
{0, 0, 2, 0, 0},
{0, 1, 0, 0, 0},
{1, 0, 0, 0, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (200)*-1,(800)*-1 
end
setCombatCallback(combat27_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 2800ms
local combat28_Brush_2 = createCombatObject()
setCombatParam(combat28_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat28_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat28_Brush_2,createCombatArea({{1, 0, 0, 0, 0},
{0, 1, 0, 0, 0},
{0, 0, 2, 0, 0},
{0, 0, 0, 1, 0},
{0, 0, 0, 0, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (200)*-1,(800)*-1 
end
setCombatCallback(combat28_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 2900ms
local combat29_Brush_2 = createCombatObject()
setCombatParam(combat29_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat29_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat29_Brush_2,createCombatArea({{0, 0, 0, 1, 0},
{0, 0, 0, 0, 1},
{0, 0, 2, 0, 0},
{1, 0, 0, 0, 0},
{0, 1, 0, 0, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (200)*-1,(800)*-1 
end
setCombatCallback(combat29_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 3000ms
local combat30_Brush_2 = createCombatObject()
setCombatParam(combat30_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat30_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat30_Brush_2,createCombatArea({{0, 1, 0, 0, 0},
{1, 0, 0, 0, 0},
{0, 0, 2, 0, 0},
{0, 0, 0, 0, 1},
{0, 0, 0, 1, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (200)*-1,(800)*-1 
end
setCombatCallback(combat30_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

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
	RunPart(combat0_Brush,cid,var)
	addEvent(RunPart,100,combat1_Brush,cid,var)
	addEvent(RunPart,200,combat2_Brush,cid,var)
	addEvent(RunPart,300,combat3_Brush,cid,var)
	addEvent(RunPart,1000,combat10_Brush,cid,var)
	addEvent(RunPart,1200,combat12_Brush,cid,var)
	addEvent(RunPart,1400,combat14_Brush,cid,var)
	addEvent(RunPart,1600,combat16_Brush,cid,var)
	addEvent(RunPart,2500,combat25_Brush_2,cid,var)
	addEvent(RunPart,2600,combat26_Brush_2,cid,var)
	addEvent(RunPart,2700,combat27_Brush_2,cid,var)
	addEvent(RunPart,2800,combat28_Brush_2,cid,var)
	addEvent(RunPart,2900,combat29_Brush_2,cid,var)
	addEvent(RunPart,3000,combat30_Brush_2,cid,var)
	return true
end