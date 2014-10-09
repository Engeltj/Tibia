-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 0ms
local combat0_Poison_AoE = createCombatObject()
setCombatParam(combat0_Poison_AoE, COMBAT_PARAM_EFFECT, CONST_ME_GREEN_RINGS)
setCombatParam(combat0_Poison_AoE, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
setCombatArea(combat0_Poison_AoE,createCombatArea({{0, 1, 1, 1, 0},
{1, 1, 1, 1, 1},
{1, 1, 2, 1, 1},
{1, 1, 1, 1, 1},
{0, 1, 1, 1, 0}}))
function getDmg_Poison_AoE(cid, level, maglevel)
	return (1)*-1,(1)*-1 
end
setCombatCallback(combat0_Poison_AoE, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Poison_AoE")

local con_Poison__combat0_Poison_AoE = createConditionObject(0+CONDITION_POISON)
addDamageCondition(con_Poison__combat0_Poison_AoE, 6, 3000, -20)
setCombatCondition(combat0_Poison_AoE, con_Poison__combat0_Poison_AoE)

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
	RunPart(combat0_Poison_AoE,cid,var)
	return true
end