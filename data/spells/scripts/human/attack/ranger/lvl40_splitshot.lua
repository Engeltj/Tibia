-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 0ms
local combat0_SplitShot = createCombatObject()
setCombatParam(combat0_SplitShot, COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
setCombatParam(combat0_SplitShot, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_SplitShot,createCombatArea({{1, 1, 1, 1, 1},
{0, 1, 1, 1, 0},
{0, 0, 3, 0, 0},
{0, 0, 1, 0, 0}}))
function getDmg_SplitShot(cid, level, skill, attack, factor)
	local bow = getBow(cid)
	if not bow then
		attack = 0
	end
	--print("atk: " .. attack .. " factor: " .. factor)
	local bonus = 1.2
	local min_dmg = level/5 * bonus
	local max_dmg = (0.09*1*skill*attack+min_dmg) * bonus
	--print(min_dmg .. " :::  " .. max_dmg)
	return -min_dmg, -max_dmg
end
setCombatCallback(combat0_SplitShot, CALLBACK_PARAM_SKILLVALUE, "getDmg_SplitShot")
local dfcombat0_SplitShot = {CONST_ANI_ARROW,0,0,0,1,1,2,2,3,1,3,0,3,-1,3,0,2,-1,2,-2,3}

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
	RunPart(combat0_SplitShot,cid,var,dfcombat0_SplitShot,startPos,startDir)
	return true
end