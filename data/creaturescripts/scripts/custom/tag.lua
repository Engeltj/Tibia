function onTarget(cid, target)
	local storage = getPlayerStorageValue(cid, 16005)
	if isPlayer(target) and storage == 2 then
		if (getDistanceBetween(getPlayerPosition(target), getPlayerPosition(cid)) < 2) then
			doSetCreatureOutfit(target, red)
			doSetCreatureOutfit(cid, blue)
			doPlayerSendTextMessage(target, MESSAGE_EVENT_ADVANCE, "You've been tagged!")
			setPlayerStorageValue(target, 16005, 2)
			setPlayerStorageValue(cid, 16005, 1)
			doCreatureSetNoMove(target, true)
			addEvent(doCreatureSetNoMove, 3000, target, false)
			doSendMagicEffect(getPlayerPosition(target), 12)
			doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "RUN!")
		end
	end
	if (storage > 0) then
		return false
	end
	return true
end