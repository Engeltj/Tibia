function onThrow(cid, item, fromPosition, toPosition)
	if item.actionid == 2031 then
		local buy_price = cost(item, 15, item.uid)
		buy_price = buy_price + (tonumber(getItemAttribute(item.uid, 'attack')) or 0)/10 * 10000
		buy_price = buy_price + (tonumber(getItemAttribute(item.uid, 'armor')) or 0)/10 * 10000
		buy_price = buy_price + (tonumber(getItemAttribute(item.uid, 'defense')) or 0)/10 * 10000
		buy_price = math.floor(buy_price / 4)
		local item_id = tonumber(getPlayerStorageValue(cid, 1704)) or -1
		if item_id == item.itemid then
			if (buy_price == 0) then
				doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "Cannot buy item, please report {S-" .. item.itemid .."} to admin.")
				doSendMagicEffect(getPlayerPosition(cid), 2)
				return false
			elseif doPlayerRemoveMoney(cid, buy_price) then
				doItemSetAttribute(item.uid, 'aid', 0)
				doSendMagicEffect(getPlayerPosition(cid), 12)
				doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have bought 1x " .. getItemInfo(item.itemid).name .. " for " .. buy_price .. " gp.")
				fromPosition.stackpos = 255
				addEvent(createShopItem, 150, fromPosition, 100)
			else
				doPlayerSendCancel(cid, "You require " .. (buy_price - getPlayerMoney(cid)) .. " more gold.");
				doSendMagicEffect(getPlayerPosition(cid), 2)
				return false
			end
		else
			if (buy_price >= 10000) then
				local price = math.ceil(buy_price/10000)
				doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Take again to buy " .. getItemInfo(item.itemid).name .. " for about " .. price .. " cc.")
			else
				doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Take again to buy " .. getItemInfo(item.itemid).name .. " for " .. buy_price .. " gp.")
			end
			
			setPlayerStorageValue(cid, 1704, item.itemid)
			addEvent(setPlayerStorageValue, 10*1000, cid, 1704, 0)
			return false
		end
	end
	return true
end

