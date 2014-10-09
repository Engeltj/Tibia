function onThrow(cid, item, fromPosition, toPosition)
	if item.actionid == 2038 then
		if (getPlayerStorageValue(cid, 102) == -1) then
			doPlayerAddItem(cid, item.itemid, 1)
			if item.itemid == 2403 then
				doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You've chosen to start your journey with a sword!")
				setPlayerStorageValue(cid, 102, 1)
			elseif item.itemid == 2382 then
				doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You've chosen to start your journey with a club!")
				setPlayerStorageValue(cid, 102, 2)
			elseif item.itemid == 2388 then
				doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You've chosen to start your journey with an axe!")
				setPlayerStorageValue(cid, 102, 3)
			end
		else
			if item.itemid == 2403 then
				doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You've changed your weapon class to sword!")
				setPlayerStorageValue(cid, 102, 1)
			elseif item.itemid == 2382 then
				doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You've changed your weapon class to club!")
				setPlayerStorageValue(cid, 102, 2)
			elseif item.itemid == 2388 then
				doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You've changed your weapon class to axe!")
				setPlayerStorageValue(cid, 102, 3)
			end
		end
		doSendMagicEffect(getPlayerPosition(cid), 12)
		return false
	end
	return true
end

