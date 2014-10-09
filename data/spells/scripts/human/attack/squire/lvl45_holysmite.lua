-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 0ms
local combat0_Brush_4 = createCombatObject()
setCombatParam(combat0_Brush_4, COMBAT_PARAM_EFFECT, CONST_ME_HOLYAREA)
setCombatParam(combat0_Brush_4, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatArea(combat0_Brush_4,createCombatArea({{0, 1, 0},
{1, 2, 1},
{0, 1, 0}}))
function getDmg_Brush_4(cid, level, maglevel)
min = -(level * 1.3 + maglevel * 2.1) * .8
max = -(level * 1.6 + maglevel * 3.95) * 1.4
	return min, max
end
setCombatCallback(combat0_Brush_4, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_4")

-- Areas/Combat for 200ms
local combat2_Brush_4 = createCombatObject()
setCombatParam(combat2_Brush_4, COMBAT_PARAM_EFFECT, CONST_ME_HOLYAREA)
setCombatParam(combat2_Brush_4, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatArea(combat2_Brush_4,createCombatArea({{0, 0, 1, 0, 0},
{0, 0, 0, 0, 0},
{1, 0, 2, 0, 1},
{0, 0, 0, 0, 0},
{0, 0, 1, 0, 0}}))
function getDmg_Brush_4(cid, level, maglevel)
min = -(level * 1.3 + maglevel * 2.1) * .8
max = -(level * 1.6 + maglevel * 3.95) * 1.4
	return min, max
end
setCombatCallback(combat2_Brush_4, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_4")

-- Areas/Combat for 400ms
local combat4_Brush_4 = createCombatObject()
setCombatParam(combat4_Brush_4, COMBAT_PARAM_EFFECT, CONST_ME_HOLYAREA)
setCombatParam(combat4_Brush_4, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatArea(combat4_Brush_4,createCombatArea({{0, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{1, 0, 0, 2, 0, 0, 1},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 0}}))
function getDmg_Brush_4(cid, level, maglevel)
min = -(level * 1.3 + maglevel * 2.1) * .8
max = -(level * 1.6 + maglevel * 3.95) * 1.4
	return min, max
end
setCombatCallback(combat4_Brush_4, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_4")

-- Areas/Combat for 600ms
local combat6_Brush_5 = createCombatObject()
setCombatParam(combat6_Brush_5, COMBAT_PARAM_EFFECT, CONST_ME_HOLYDAMAGE)
setCombatParam(combat6_Brush_5, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatArea(combat6_Brush_5,createCombatArea({{0, 1, 0, 1, 0},
{1, 1, 0, 1, 1},
{0, 0, 2, 0, 0},
{1, 1, 0, 1, 1},
{0, 1, 0, 1, 0}}))
function getDmg_Brush_5(cid, level, maglevel)
min = -(level * 1.3 + maglevel * 2.1) * .8
max = -(level * 1.6 + maglevel * 3.95) * 1.4
	return min, max
end
setCombatCallback(combat6_Brush_5, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_5")

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
	RunPart(combat0_Brush_4,cid,var)
	addEvent(RunPart,200,combat2_Brush_4,cid,var)
	addEvent(RunPart,400,combat4_Brush_4,cid,var)
	addEvent(RunPart,600,combat6_Brush_5,cid,var)
	return true
end