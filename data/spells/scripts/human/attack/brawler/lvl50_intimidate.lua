-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 0ms
local combat0_Brush_7 = createCombatObject()
setCombatParam(combat0_Brush_7, COMBAT_PARAM_EFFECT, CONST_ME_LOSEENERGY)
setCombatParam(combat0_Brush_7, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush_7,createCombatArea({{1, 1, 1},
{1, 2, 1},
{1, 1, 1}}))
function getDmg_Brush_7(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat0_Brush_7, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_7")

-- con___combat0_Brush_7 = createConditionObject(0+CONDITION_PARALYZE)
--setCombatCondition(combat0_Brush_7, con___combat0_Brush_7)
local condition = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 20000)
setConditionFormula(condition, -0.9, 0, -0.9, 0)
setCombatCondition(combat0_Brush_7, condition)

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
	RunPart(combat0_Brush_7,cid,var)
	return true
end