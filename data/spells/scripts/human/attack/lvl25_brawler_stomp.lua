-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 0ms
local combat0_Physical_stomp = createCombatObject()
setCombatParam(combat0_Physical_stomp, COMBAT_PARAM_EFFECT, CONST_ME_BLOCKHIT)
setCombatParam(combat0_Physical_stomp, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Physical_stomp,createCombatArea({{1, 1, 1},
{1, 2, 1},
{1, 1, 1}}))
function getDmg_Physical_stomp(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat0_Physical_stomp, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Physical_stomp")

-- Areas/Combat for 200ms
local combat2_Physical_stomp = createCombatObject()
setCombatParam(combat2_Physical_stomp, COMBAT_PARAM_EFFECT, CONST_ME_BLOCKHIT)
setCombatParam(combat2_Physical_stomp, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat2_Physical_stomp,createCombatArea({{0, 1, 1, 1, 0},
{1, 0, 0, 0, 1},
{1, 0, 2, 0, 1},
{1, 0, 0, 0, 1},
{0, 1, 1, 1, 0}}))
function getDmg_Physical_stomp(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat2_Physical_stomp, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Physical_stomp")

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
	RunPart(combat0_Physical_stomp,cid,var)
	addEvent(RunPart,200,combat2_Physical_stomp,cid,var)
	return true
end