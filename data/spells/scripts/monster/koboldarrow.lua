-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 0ms
local combat0_Brush = createCombatObject()
setCombatParam(combat0_Brush, COMBAT_PARAM_EFFECT, CONST_ME_YELLOW_RINGS)
setCombatParam(combat0_Brush, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_POISONARROW)
setCombatParam(combat0_Brush, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
setCombatArea(combat0_Brush,createCombatArea({{3}}))
function getDmg_Brush(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat0_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat0_Brush = {CONST_ANI_POISONARROW,0,0}local combat0_Brush_2 = createCombatObject()
setCombatParam(combat0_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_YELLOW_RINGS)
setCombatParam(combat0_Brush_2, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
setCombatArea(combat0_Brush_2,createCombatArea({{1, 0, 1},
{0, 2, 0},
{1, 0, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat0_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")local combat0_Brush_3 = createCombatObject()
setCombatParam(combat0_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_GREEN_RINGS)
setCombatParam(combat0_Brush_3, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
setCombatArea(combat0_Brush_3,createCombatArea({{0, 1, 0},
{1, 2, 1},
{0, 1, 0}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat0_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

-- Areas/Combat for 400ms
local combat4_Brush_3 = createCombatObject()
setCombatParam(combat4_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_GREEN_RINGS)
setCombatParam(combat4_Brush_3, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
setCombatArea(combat4_Brush_3,createCombatArea({{0, 1, 0, 1, 0},
{1, 0, 0, 0, 1},
{0, 0, 2, 0, 0},
{1, 0, 0, 0, 1},
{0, 1, 0, 1, 0}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat4_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")local combat4_Brush_2 = createCombatObject()
setCombatParam(combat4_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_YELLOW_RINGS)
setCombatParam(combat4_Brush_2, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
setCombatArea(combat4_Brush_2,createCombatArea({{0, 0, 1, 0, 0},
{0, 0, 0, 0, 0},
{1, 0, 2, 0, 1},
{0, 0, 0, 0, 0},
{0, 0, 1, 0, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat4_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

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
	RunPart(combat0_Brush,cid,var,dfcombat0_Brush,startPos)
	RunPart(combat0_Brush_2,cid,var)
	RunPart(combat0_Brush_3,cid,var)
	addEvent(RunPart,400,combat4_Brush_3,cid,var)
	addEvent(RunPart,400,combat4_Brush_2,cid,var)
	return true
end