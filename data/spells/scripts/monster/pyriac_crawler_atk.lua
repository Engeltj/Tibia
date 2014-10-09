-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 300ms
local combat3_Brush_4 = createCombatObject()
setCombatParam(combat3_Brush_4, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatParam(combat3_Brush_4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat3_Brush_4,createCombatArea({{0, 0, 0, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 0, 0},
{1, 1, 0, 0, 0, 0, 0, 1, 1},
{1, 1, 1, 0, 2, 0, 1, 1, 1},
{1, 1, 0, 0, 0, 0, 0, 1, 1},
{0, 0, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 0, 0, 0}}))
function getDmg_Brush_4(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat3_Brush_4, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_4")

-- Areas/Combat for 0ms
local combat0_Brush_4 = createCombatObject()
setCombatParam(combat0_Brush_4, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatParam(combat0_Brush_4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush_4,createCombatArea({{1, 1, 1},
{1, 3, 1},
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
	addEvent(RunPart,300,combat3_Brush_4,cid,var)
	RunPart(combat0_Brush_4,cid,var)
	return true
end