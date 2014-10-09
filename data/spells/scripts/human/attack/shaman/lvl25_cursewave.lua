-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 0ms
local combat0_Brush_3 = createCombatObject()
setCombatParam(combat0_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat0_Brush_3, COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
setCombatArea(combat0_Brush_3,createCombatArea({{1},
{1},
{1},
{1},
{3}}))
function getDmg_Brush_3(cid, level, maglevel)

min = -(level * 1 + maglevel * 1) * .8
max = -(level * 1.3 + maglevel * 1.5) * 1.4
	return min, max
end

setCombatCallback(combat0_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

local condition = createConditionObject(CONDITION_CURSED)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)

addDamageCondition(condition, 1, 3000, -45)
addDamageCondition(condition, 1, 3000, -40)
addDamageCondition(condition, 1, 3000, -35)
addDamageCondition(condition, 1, 3000, -34)
addDamageCondition(condition, 2, 3000, -33)
addDamageCondition(condition, 2, 3000, -32)
addDamageCondition(condition, 2, 3000, -31)
addDamageCondition(condition, 2, 3000, -30)
addDamageCondition(condition, 3, 3000, -29)
addDamageCondition(condition, 3, 3000, -25)
addDamageCondition(condition, 3, 3000, -24)
addDamageCondition(condition, 4, 3000, -23)
addDamageCondition(condition, 4, 3000, -20)
addDamageCondition(condition, 5, 3000, -19)
addDamageCondition(condition, 5, 3000, -15)
addDamageCondition(condition, 6, 3000, -10)
addDamageCondition(condition, 10, 3000, -5)
setCombatCondition(combat0_Brush_3, condition)

-- =============== CORE FUNCTIONS ===============
local function RunPart(c,cid,var,dirList,dirEmitPos,startDir) -- Part
	if (isCreature(cid)) then
		doCombat(cid, c, var)
		if (dirList ~= nil) then -- Emit distance effects
			local i = 2;
			while (i < #dirList) do
				if (startDir == 0) then -- N
					doSendDistanceShoot(dirEmitPos,{x=dirEmitPos.x-dirList[i],y=dirEmitPos.y-dirList[i+1],z=dirEmitPos.z},dirList[1])
				elseif (startDir == 2) then -- S
					doSendDistanceShoot(dirEmitPos,{x=dirEmitPos.x+dirList[i],y=dirEmitPos.y+dirList[i+1],z=dirEmitPos.z},dirList[1])
				elseif (startDir == 1) then -- E
					doSendDistanceShoot(dirEmitPos,{x=dirEmitPos.x+dirList[i+1],y=dirEmitPos.y+dirList[i],z=dirEmitPos.z},dirList[1])
				else -- W / Something weird happened
					doSendDistanceShoot(dirEmitPos,{x=dirEmitPos.x-dirList[i+1],y=dirEmitPos.y-dirList[i],z=dirEmitPos.z},dirList[1])
				end
				i = i + 2
			end		
		end
	end
end

function onCastSpell(cid, var)
	local startPos = getCreaturePosition(cid)
	local startDir = getCreatureLookDirection(cid)
	RunPart(combat0_Brush_3,cid,var)
	return true
end