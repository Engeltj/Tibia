local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_POISON)

function getDmg_Brush(cid, level, maglevel)
	min = -(level * 1.4 + maglevel * 1.8) * .8
	max = -(level * 1.8 + maglevel * 2.1) * 1.6
	return min, max
end
setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
-- local dfcombat0_Brush = {CONST_ANI_ENERGY,0,0}

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

local function unregisterExplosion(cid)
	if (isCreature(cid)) then
		unregisterCreatureEvent(cid, "corpseExplosion")
	end
end

function onCastSpell(cid, var)
	
	-- local startPos = getCreaturePosition(cid)
	-- local ret = RunPart(combat,cid,var,dfcombat0_Brush,startPos)
	-- if(ret == false) then
		-- return false
	-- end
 
	local target = variantToNumber(var)
	if(target ~= 0) then
		registerCreatureEvent(target, "corpseExplosion")
		addEvent(unregisterExplosion, 10*1000, target)
	end
	return doCombat(cid, combat, var)
end


