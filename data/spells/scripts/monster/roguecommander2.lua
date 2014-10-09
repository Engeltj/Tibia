-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 600ms
local combat6_Brush_4 = createCombatObject()
setCombatParam(combat6_Brush_4, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatParam(combat6_Brush_4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat6_Brush_4,createCombatArea({{0, 0, 0, 1, 0},
{1, 0, 0, 0, 0},
{0, 0, 2, 0, 0},
{0, 0, 0, 0, 1},
{0, 1, 0, 0, 0}}))
function getDmg_Brush_4(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat6_Brush_4, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_4")

-- Areas/Combat for 500ms
local combat5_Brush_4 = createCombatObject()
setCombatParam(combat5_Brush_4, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatParam(combat5_Brush_4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat5_Brush_4,createCombatArea({{1, 0, 0, 0, 1},
{0, 0, 0, 0, 0},
{0, 0, 2, 0, 0},
{0, 0, 0, 0, 0},
{1, 0, 0, 0, 1}}))
function getDmg_Brush_4(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat5_Brush_4, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_4")

-- Areas/Combat for 400ms
local combat4_Brush_4 = createCombatObject()
setCombatParam(combat4_Brush_4, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatParam(combat4_Brush_4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat4_Brush_4,createCombatArea({{0, 1, 0, 0, 0},
{0, 0, 0, 0, 1},
{0, 0, 2, 0, 0},
{1, 0, 0, 0, 0},
{0, 0, 0, 1, 0}}))
function getDmg_Brush_4(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat4_Brush_4, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_4")

-- Areas/Combat for 300ms
local combat3_Brush_4 = createCombatObject()
setCombatParam(combat3_Brush_4, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatParam(combat3_Brush_4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat3_Brush_4,createCombatArea({{0, 0, 1, 0, 0},
{0, 0, 0, 0, 0},
{1, 0, 2, 0, 1},
{0, 0, 0, 0, 0},
{0, 0, 1, 0, 0}}))
function getDmg_Brush_4(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat3_Brush_4, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_4")

-- Areas/Combat for 0ms
local combat0_Brush_3 = createCombatObject()
setCombatParam(combat0_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatParam(combat0_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush_3,createCombatArea({{3}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat0_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")
local dfcombat0_Brush_3 = {CONST_ANI_SMALLEARTH,0,0}local combat0_Brush_4 = createCombatObject()
setCombatParam(combat0_Brush_4, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatParam(combat0_Brush_4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush_4,createCombatArea({{1, 1, 1},
{1, 2, 1},
{1, 1, 1}}))
function getDmg_Brush_4(cid, level, maglevel)
	return (0)*-1,(0)*-1 
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
	addEvent(RunPart,600,combat6_Brush_4,cid,var)
	addEvent(RunPart,500,combat5_Brush_4,cid,var)
	addEvent(RunPart,400,combat4_Brush_4,cid,var)
	addEvent(RunPart,300,combat3_Brush_4,cid,var)
	RunPart(combat0_Brush_3,cid,var,dfcombat0_Brush_3,startPos)
	RunPart(combat0_Brush_4,cid,var)
	return true
end