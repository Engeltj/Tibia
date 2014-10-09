function onAdvance(cid, skill, oldLevel, newLevel)
	
	if newLevel == 20 and skill == SKILL__LEVEL then
		local voc = getPlayerVocation(cid)
		if (voc == 1) then
			doPlayerAddMapMark(cid, {x = 2437, y = 2192, z = 7}, 3)
			setPlayerStorageValue(cid, 15903, 1)
			doPlayerSendTextMessage(cid, MESSAGE_EXPERIENCE, "You qualify for promotion! To obtain, walk along the path east of the city, cross the bridge and head directly north.")
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You qualify for promotion! To obtain, walk along the path east of the city, cross the bridge and head directly north.")
		end
	end
	
		--print(filename)
	if (skill == SKILL__LEVEL) then
		local name = getPlayerName(cid)
		name = string.gsub(name, '(%[%w+%] )', "")
	
		local filename = "data/logs/gold/"..name..".txt"
		local file = io.open(filename, "a")
		local money = getPlayerMoney(cid) + getPlayerBalance(cid)
		local playtime = math.ceil((os.time() - getPlayerStorageValue(cid, 104)) / 60)
		file:write(playtime .. "\t" .. newLevel .. "\t" .. money .. "\n")
		file:close()
	end
	return true
end