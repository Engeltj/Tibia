function onKill(cid, target, lastHit)
	local name = getCreatureName(target)
	if (string.find(name, "Vyln", 1)) then
		local storage = getPlayerStorageValue(cid, 17002)
		if (storage == 49) then
			setPlayerStorageValue(cid, 15910, 2)
			addEvent(doPlayerSendTextMessage, 100, cid, MESSAGE_LOOT, "Vylns are fleeing! Return to the farmer.")
		end
		setPlayerStorageValue(cid, 17002, storage+1)
		doSendMagicEffect(getCreaturePosition(target), 30)
		doPlayerSendTextMessage(cid, MESSAGE_EXPERIENCE, "", storage+1, COLOR_GREEN)
	end
	return true
end