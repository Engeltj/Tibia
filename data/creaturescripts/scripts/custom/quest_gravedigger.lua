function onThrow(cid, item, fromPos, toPos)
	if (item.itemid == 7733) then
		local s1 = getPlayerStorageValue(cid, 16012)
		local s2 = getPlayerStorageValue(cid, 16013)
		local s3 = getPlayerStorageValue(cid, 16014)
		if (toPos.x == 2057) and ((toPos.y == 2148) or (toPos.y == 2147)) and (toPos.z == 9) and not s1 then
			setPlayerStorageValue(cid, 16012, 1)
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Flowers placed for Drake Barbus")
			doSendMagicEffect(getPlayerPosition(cid), 12)
		elseif (toPos.x == 2063) and ((toPos.y == 2148) or (toPos.y == 2147)) and (toPos.z == 9) and not s2 then
			setPlayerStorageValue(cid, 16013, 1)
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Flowers placed for Chris Lenkinux")
			doSendMagicEffect(getPlayerPosition(cid), 12)
		elseif (toPos.x == 2058) and (toPos.y == 2152) and (toPos.z == 9) and not s3 then
			setPlayerStorageValue(cid, 16014, 1)
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Flowers placed for Ben Jengel")
			doSendMagicEffect(getPlayerPosition(cid), 12)
		end
		s1 = getPlayerStorageValue(cid, 16012)
		s2 = getPlayerStorageValue(cid, 16013)
		s3 = getPlayerStorageValue(cid, 16014)
		if (s1==1 and s2==1 and s3==1) then
			setPlayerStorageValue(cid, 15907, 2)
			return true
		end

	end
	return true
end