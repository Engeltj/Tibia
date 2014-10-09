-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 0ms
local combat0_PoisonAoE2 = createCombatObject()
setCombatParam(combat0_PoisonAoE2, COMBAT_PARAM_EFFECT, CONST_ME_POISONAREA)
setCombatParam(combat0_PoisonAoE2, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
setCombatArea(combat0_PoisonAoE2,createCombatArea({{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 0, 0},
{1, 1, 1, 1, 2, 1, 1, 1, 1},
{0, 0, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 0, 0}}))
function getDmg_PoisonAoE2(cid, level, maglevel)
	return (0)*-1,(0)*-1 
end
setCombatCallback(combat0_PoisonAoE2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_PoisonAoE2")

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
	RunPart(combat0_PoisonAoE2,cid,var)
	return true
end