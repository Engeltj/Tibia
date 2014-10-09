-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 800ms
local combat8_Brush_3 = createCombatObject()
setCombatParam(combat8_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_FIREWORK_YELLOW)
setCombatParam(combat8_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat8_Brush_3,createCombatArea({{0, 1, 1, 1, 0},
{1, 1, 1, 1, 1},
{1, 1, 3, 1, 1},
{1, 1, 1, 1, 1},
{0, 1, 1, 1, 0}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (level*.3+maglevel * .5)  * -.8, (level*.5+maglevel * 1.5)  * -1 
end
setCombatCallback(combat8_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

-- Areas/Combat for 100ms
local combat1_Brush_3 = createCombatObject()
setCombatParam(combat1_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_FIREWORK_YELLOW)
setCombatParam(combat1_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat1_Brush_3,createCombatArea({{0, 1, 1, 1, 0},
{1, 1, 1, 1, 1},
{1, 1, 3, 1, 1},
{1, 1, 1, 1, 1},
{0, 1, 1, 1, 0}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (level*.3+maglevel * .5)  * -.8, (level*.5+maglevel * 1.5)  * -1 
end
setCombatCallback(combat1_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

-- Areas/Combat for 0ms
local combat0_Brush_4 = createCombatObject()
setCombatParam(combat0_Brush_4, COMBAT_PARAM_EFFECT, CONST_ME_FIREWORK_YELLOW)
setCombatParam(combat0_Brush_4, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLHOLY)
setCombatParam(combat0_Brush_4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush_4,createCombatArea({{3}}))
function getDmg_Brush_4(cid, level, maglevel)
	return (level*.3+maglevel * .5)  * -.8, (level*.5+maglevel * 1.5)  * -1 
end
setCombatCallback(combat0_Brush_4, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_4")
local dfcombat0_Brush_4 = {CONST_ANI_SMALLHOLY,0,0}

-- Areas/Combat for 1500ms
local combat15_Brush_3 = createCombatObject()
setCombatParam(combat15_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_FIREWORK_YELLOW)
setCombatParam(combat15_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat15_Brush_3,createCombatArea({{0, 1, 1, 1, 0},
{1, 1, 1, 1, 1},
{1, 1, 3, 1, 1},
{1, 1, 1, 1, 1},
{0, 1, 1, 1, 0}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (level*.3+maglevel * .5)  * -.8, (level*.5+maglevel * 1.5)  * -1 
end
setCombatCallback(combat15_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

-- Areas/Combat for 2200ms
local combat22_Brush_3 = createCombatObject()
setCombatParam(combat22_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_FIREWORK_YELLOW)
setCombatParam(combat22_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat22_Brush_3,createCombatArea({{0, 1, 1, 1, 0},
{1, 1, 1, 1, 1},
{1, 1, 3, 1, 1},
{1, 1, 1, 1, 1},
{0, 1, 1, 1, 0}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (level*.3+maglevel * .5)  * -.8, (level*.5+maglevel * 1.5)  * -1 
end
setCombatCallback(combat22_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

-- Areas/Combat for 2900ms
local combat29_Brush_3 = createCombatObject()
setCombatParam(combat29_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_FIREWORK_YELLOW)
setCombatParam(combat29_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat29_Brush_3,createCombatArea({{0, 1, 1, 1, 0},
{1, 1, 1, 1, 1},
{1, 1, 3, 1, 1},
{1, 1, 1, 1, 1},
{0, 1, 1, 1, 0}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (level*.3+maglevel * .5)  * -.8, (level*.5+maglevel * 1.5)  * -1 
end
setCombatCallback(combat29_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

-- Areas/Combat for 3600ms
local combat36_Brush_3 = createCombatObject()
setCombatParam(combat36_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_FIREWORK_YELLOW)
setCombatParam(combat36_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat36_Brush_3,createCombatArea({{0, 1, 1, 1, 0},
{1, 1, 1, 1, 1},
{1, 1, 3, 1, 1},
{1, 1, 1, 1, 1},
{0, 1, 1, 1, 0}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (level*.3+maglevel * .5)  * -.8, (level*.5+maglevel * 1.5)  * -1 
end
setCombatCallback(combat36_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

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
		addEvent(RunPart,800,combat8_Brush_3,cid,var)
		addEvent(RunPart,100,combat1_Brush_3,cid,var)
		RunPart(combat0_Brush_4,cid,var,dfcombat0_Brush_4,startPos)
		addEvent(RunPart,1500,combat15_Brush_3,cid,var)
		addEvent(RunPart,2200,combat22_Brush_3,cid,var)
		addEvent(RunPart,2900,combat29_Brush_3,cid,var)
		addEvent(RunPart,3600,combat36_Brush_3,cid,var)
	return true
end