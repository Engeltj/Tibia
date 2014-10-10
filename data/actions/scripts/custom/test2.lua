function onUse(cid, item, frompos, item2, topos) 
		local slot2 = getItemInfo(item2.itemid)
		local slot = getItemAttribute(item2.uid,'slotType') or 0
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "" .. slot2.weaponType .. "")
	return true
end
