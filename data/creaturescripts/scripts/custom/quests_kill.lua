function onKill(cid, target, lastHit)
	
	local name = getCreatureName(target)
	if getPlayerStorageValue(cid, 15901) == 0 then
		if getPlayerStorageValue(cid, 15902) == -1 then
			setPlayerStorageValue(cid, 15902, 0)
		end
		local count = tonumber(getPlayerStorageValue(cid, 15902))
		if (count < 10) then
			local stringPos = string.find(getCreatureName(target), "Siclee") or 0
			if stringPos > 0 then
				count = count + 1
				setPlayerStorageValue(cid, 15902, count)
				if count == 10 then
					doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The Sicklees have be faught off!")
					setPlayerStorageValue(cid, 15901, 1)
				end
			end
		end
	
	end
	
	if (isPlayer(target)) then
		local FRAG_LIMIT = 5
		local storage_target = getPlayerStorageValue(target, 16003)
		if (storage_target > 0) then
			if (storage_target > 0) then
				setPlayerStorageValue(target, 16003, storage_target-1)
			end
		end
		
		local storage = getPlayerStorageValue(cid, 16003)
		local storage2 = getPlayerStorageValue(cid, 16004)
		storage = storage + 1
		setPlayerStorageValue(cid, 16003, storage)
		local level = getPlayerLevel(cid)
		if (storage2 == -1 and storage == FRAG_LIMIT) then
			local winnings = math.floor(level*20)
			doBroadcastMessage(getPlayerName(cid) .. " is wanted! " .. doNumberFormat(winnings) .." gps rewarded to the captor!", MESSAGE_EVENT_DEFAULT)
			setPlayerStorageValue(cid, 16004, winnings)
		elseif (storage2 > 1) then
			local winnings = math.floor(level*20 + level*2*(storage-10))
			setPlayerStorageValue(cid, 16004, winnings)
		end
	
	end
	
	
	if (string.find(name, "Sigmodon", 1)) then
		local storage = getPlayerStorageValue(cid, 17000)
		setPlayerStorageValue(cid, 17000, storage+1)
	elseif (string.find(name, "Lead Waste", 1)) then
		local storage = getPlayerStorageValue(cid, 17001)
		setPlayerStorageValue(cid, 17001, storage+1)
	end
	
	return true
end