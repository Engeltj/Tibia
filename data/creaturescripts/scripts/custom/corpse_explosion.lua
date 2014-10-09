local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_EXPLOSIONAREA)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat,createCombatArea({{0, 1, 1, 1, 0},
{1, 1, 1, 1, 1},
{1, 1, 3, 1, 1},
{1, 1, 1, 1, 1},
{0, 1, 1, 1, 0}}))
function doDamage(cid, level, maglevel)
	min = -(level * 1.4 + maglevel * 1.8) * .8
	max = -(level * 1.8 + maglevel * 2.1) * 1.6
	return min, max
end
setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "doDamage")

-- -- =============== CORE FUNCTIONS ===============
-- local function RunPart(c,cid,var,dirList,dirEmitPos) -- Part
	-- if (isCreature(cid)) then
		-- doCombat(cid, c, var)
		-- if (dirList ~= nil) then -- Emit distance effects
			-- local i = 2;
			-- while (i < #dirList) do
				-- doSendDistanceShoot(dirEmitPos,{x=dirEmitPos.x-dirList[i],y=dirEmitPos.y-dirList[i+1],z=dirEmitPos.z},dirList[1])
				-- i = i + 2
			-- end		
		-- end
	-- end
-- end

local function doItLikeItsHawt(cid, target)
	return doCombat(cid, combat, numberToVariant(target))
end
 
 
function onPrepareDeath(cid, deathList)
	doItLikeItsHawt(deathList[1], cid)
	--doCreatureCastSpell(deathList[1], "nuke")
	return true
end

