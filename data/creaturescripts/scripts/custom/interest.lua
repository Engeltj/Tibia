local function compound(cid)
	if isPlayer(cid) then
		local old = getPlayerStorageValue(cid, 16001)
		local balance = getPlayerBalance(cid)
		if old == -1 then
			setPlayerStorageValue(cid, 16001, os.time())
		elseif balance > 0 then
			local difference = os.time() - old
			local old_balance = getPlayerBalance(cid)
			local interest = 1.009
			local flag = 0
			local i = 0
			while (difference > 24*60*60) do
				if (i < 7) then
					setPlayerBalance(cid, balance*interest)
					balance = getPlayerBalance(cid)
				end
				difference = difference - 24*60*60
				flag = 1
				i=i+1
			end
			setPlayerStorageValue(cid, 16001, os.time()-difference)
			local newMoney = doNumberFormat(balance-old_balance)
			if flag == 1 then
				doPlayerSendTextMessage(cid, MESSAGE_EXPERIENCE, "", newMoney, COLOR_YELLOW)
				doPlayerSendTextMessage(cid, MESSAGE_LOOT, "Interest: " .. newMoney .. " gp.")
			end
		end
		addEvent(compound, 1000*60*60, cid)
	end
end


function onLogin(cid)
	compound(cid)
	return true
end