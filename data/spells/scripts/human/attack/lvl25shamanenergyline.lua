-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 400ms
local combat4_Brush_3 = createCombatObject()
setCombatParam(combat4_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
setCombatParam(combat4_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat4_Brush_3,createCombatArea({{1},
{0},
{0},
{0},
{0},
{2}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat4_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

-- Areas/Combat for 300ms
local combat3_Brush_3 = createCombatObject()
setCombatParam(combat3_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
setCombatParam(combat3_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat3_Brush_3,createCombatArea({{1},
{0},
{0},
{0},
{2}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat3_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

-- Areas/Combat for 200ms
local combat2_Brush_3 = createCombatObject()
setCombatParam(combat2_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
setCombatParam(combat2_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat2_Brush_3,createCombatArea({{1},
{0},
{0},
{2}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat2_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

-- Areas/Combat for 100ms
local combat1_Brush_3 = createCombatObject()
setCombatParam(combat1_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
setCombatParam(combat1_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat1_Brush_3,createCombatArea({{1},
{0},
{2}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat1_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

-- Areas/Combat for 0ms
local combat0_Brush_3 = createCombatObject()
setCombatParam(combat0_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
setCombatParam(combat0_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush_3,createCombatArea({{1},
{2}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat0_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

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
	addEvent(RunPart,400,combat4_Brush_3,cid,var)
	addEvent(RunPart,300,combat3_Brush_3,cid,var)
	addEvent(RunPart,200,combat2_Brush_3,cid,var)
	addEvent(RunPart,100,combat1_Brush_3,cid,var)
	RunPart(combat0_Brush_3,cid,var)
	return true
end