-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 0ms
local combat0_Brush = createCombatObject()
setCombatParam(combat0_Brush, COMBAT_PARAM_EFFECT, CONST_ME_DRAWBLOOD)
setCombatParam(combat0_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush,createCombatArea({{0, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0},
{0, 1, 0, 0, 0, 0, 0},
{1, 0, 0, 2, 0, 0, 1},
{0, 0, 0, 0, 0, 1, 0},
{0, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat0_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

-- Areas/Combat for 200ms
local combat2_Brush = createCombatObject()
setCombatParam(combat2_Brush, COMBAT_PARAM_EFFECT, CONST_ME_DRAWBLOOD)
setCombatParam(combat2_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat2_Brush,createCombatArea({{0, 0, 1, 0, 0},
{0, 1, 0, 1, 0},
{1, 0, 2, 0, 1},
{0, 1, 0, 1, 0},
{0, 0, 1, 0, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat2_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

-- Areas/Combat for 400ms
local combat4_Brush = createCombatObject()
setCombatParam(combat4_Brush, COMBAT_PARAM_EFFECT, CONST_ME_DRAWBLOOD)
setCombatParam(combat4_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat4_Brush,createCombatArea({{0, 1, 0, 0, 0},
{0, 0, 1, 0, 1},
{0, 1, 3, 1, 0},
{1, 0, 1, 0, 0},
{0, 0, 0, 1, 0}}))
function getDmg_Brush(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat4_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

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
	addEvent(RunPart,200,combat2_Brush,cid,var)
	addEvent(RunPart,400,combat4_Brush,cid,var)
	return true
end