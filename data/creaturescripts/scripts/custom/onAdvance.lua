function onAdvance(cid, skill, oldLevel, newLevel)
	local player = Player(cid)
	if newLevel == 20 and skill == SKILL__LEVEL then
		local voc = player:getVocation()
		if (voc == 1) then
			player:addMapMark({x = 2437, y = 2192, z = 7}, 3)
			player:setStorageValue(15903, 1)
			player:sendTextMessage(MESSAGE_EXPERIENCE, "You qualify for promotion! To obtain, walk along the path east of the city, cross the bridge and head directly north.")
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You qualify for promotion! To obtain, walk along the path east of the city, cross the bridge and head directly north.")
		end
	end
	
		--print(filename)
	if (skill == SKILL__LEVEL) then
		local name = player:getName()
		name = string.gsub(name, '(%[%w+%] )', "")
	
		local filename = "data/logs/gold/"..name..".txt"
		local file = io.open(filename, "a")
		local money = player:getMoney() + player:getBankBalance()
		local playtime = math.ceil((os.time() - player:getStorageValue(104)) / 60)
		file:write(playtime .. "\t" .. newLevel .. "\t" .. money .. "\n")
		file:close()
	end
	return true
end