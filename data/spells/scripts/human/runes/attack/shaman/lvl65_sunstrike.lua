-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 0ms
local combat0_Brush = createCombatObject()
setCombatParam(combat0_Brush, COMBAT_PARAM_EFFECT, CONST_ME_FIREWORK_RED)
setCombatParam(combat0_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush,createCombatArea({{3}}))
function getDmg_Brush(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat0_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

-- Areas/Combat for 500ms
local combat5_Brush = createCombatObject()
setCombatParam(combat5_Brush, COMBAT_PARAM_EFFECT, CONST_ME_FIREWORK_RED)
setCombatParam(combat5_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat5_Brush,createCombatArea({{1, 1, 1},
{1, 3, 1},
{1, 1, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat5_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

-- Areas/Combat for 1200ms
local combat12_Brush = createCombatObject()
setCombatParam(combat12_Brush, COMBAT_PARAM_EFFECT, CONST_ME_FIREWORK_RED)
setCombatParam(combat12_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat12_Brush,createCombatArea({{1, 1, 1},
{1, 3, 1},
{1, 1, 1}}))
function getDmg_Brush(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat12_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

-- Areas/Combat for 2000ms
local combat20_Brush_2 = createCombatObject()
setCombatParam(combat20_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_FIREATTACK)
setCombatParam(combat20_Brush_2, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatArea(combat20_Brush_2,createCombatArea({{1, 1, 1},
{1, 3, 1},
{1, 1, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
	min = -(level * 1.3 + maglevel * 1.5) * 1.2
	max = -(level * 1.7 + maglevel * 1.8) * 2.2
	return min, max
end
setCombatCallback(combat20_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

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
	addEvent(RunPart,500,combat5_Brush,cid,var)
	addEvent(RunPart,1200,combat12_Brush,cid,var)
	addEvent(RunPart,2000,combat20_Brush_2,cid,var)
	return true
end