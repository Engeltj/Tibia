function onPrepareDeath(cid, lastHitKiller, mostDamageKiller)
	if isPlayer(cid) then
		-- if isPlayer(lastHitKiller) then
		-- 	local skull = getPlayerSkullType(cid)
		-- 	if (skull == SKULL_NONE) then
		-- 		doPlayerSetLossPercent(cid, PLAYERLOSS_ITEMS, 5)
		-- 	elseif (skull == SKULL_YELLOW) then
		-- 		doPlayerSetLossPercent(cid, PLAYERLOSS_ITEMS, 7)
		-- 	elseif (skull == SKULL_YELLOW) then
		-- 		doPlayerSetLossPercent(cid, PLAYERLOSS_ITEMS, 10)
		-- 	elseif (skull == SKULL_YELLOW) then
		-- 		doPlayerSetLossPercent(cid, PLAYERLOSS_ITEMS, 20)
		-- 	elseif (skull == SKULL_YELLOW) then
		-- 		doPlayerSetLossPercent(cid, PLAYERLOSS_ITEMS, 30)
		-- 	end
		-- end
		local chance = math.random(1000)
		doCreatureSay(cid, "You\'re dead to me.", TALKTYPE_ORANGE_1)
		--addEvent(doBroadcastMessage, 150, "God has chosen to spare "..getPlayerName(cid) .." from dying!", MESSAGE_STATUS_DEFAULT)
		if (chance == 512) then
			local town_pos = getTownTemplePosition(getPlayerTown(cid))
			town_pos.stackpos = 253
			doTeleportThing(cid, town_pos)
			doRemoveCondition(cid, CONDITION_POISON)
			doRemoveCondition(cid, CONDITION_FIRE)
			doRemoveCondition(cid, CONDITION_ENERGY)
			doRemoveCondition(cid, CONDITION_BLEEDING)
			doRemoveCondition(cid, CONDITION_INFIGHT)
			doCreatureAddHealth(cid, 1, 65535, 256, true)
			doSendMagicEffect(town_pos, 0)
			doBroadcastMessage("A higher power has chosen to spare "..getPlayerName(cid) .." from dying!")
			return false
		else
			setPlayerStorageValue(cid, 108, 1) --to return temple stone, and upgrade stone
			local removeItem = {2297,2348,2306}
			
			for a, item in ipairs(removeItem) do
				local count = getPlayerItemCount(cid, item)
				if count >= 1 then
					doPlayerRemoveItem(cid, item, count)
				end
			end
			-- local r_upgrade = getPlayerItemCount(cid, 2297)
			-- local r_temple = getPlayerItemCount(cid, 2348)
			-- local r_temple = getPlayerItemCount(cid, 2306)
			-- if r_upgrade >= 1 then
				-- doPlayerRemoveItem(cid, 2297, r_upgrade)
			-- end
			-- if r_temple >= 1 then
				-- doPlayerRemoveItem(cid, 2348, r_temple)
			-- end
			
			
			-- local new_exp = 0 - getPlayerExperience(cid)*0.12
			-- doPlayerAddExperience(cid, new_exp);
		end
	end
	return true
end