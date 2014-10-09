-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 0ms
local combat0_Poison_Paralize = createCombatObject()
setCombatParam(combat0_Poison_Paralize, COMBAT_PARAM_EFFECT, CONST_ME_HITBYPOISON)
setCombatParam(combat0_Poison_Paralize, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
setCombatArea(combat0_Poison_Paralize,createCombatArea({{1},
{1},
{1},
{1},
{1},
{2}}))
function getDmg_Poison_Paralize(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat0_Poison_Paralize, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Poison_Paralize")

local con_Poison__combat0_Poison_Paralize = createConditionObject(0+CONDITION_POISON)
addDamageCondition(con_Poison__combat0_Poison_Paralize, 3, 1500, -15)
setCombatCondition(combat0_Poison_Paralize, con_Poison__combat0_Poison_Paralize)

local con_Slow__combat0_Poison_Paralize = createConditionObject(0+CONDITION_PARALYZE)
setConditionParam(con_Slow__combat0_Poison_Paralize, CONDITION_PARAM_TICKS, 10000)
setCombatCondition(combat0_Poison_Paralize, con_Slow__combat0_Poison_Paralize)

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
	RunPart(combat0_Poison_Paralize,cid,var)
	return true
end