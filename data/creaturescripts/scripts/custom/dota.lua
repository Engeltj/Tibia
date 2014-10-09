function onKill(cid, target, lastHit)
	local area = {
		{x=2041,y=2057,z=5}, --start
		{x=2056,y=2069,z=5}, --end
		
		{x=2045,y=2070,z=5}, --start
		{x=2053,y=2128,z=5}  --end
	}
	--Returns true if player exists in area
	--2D function only, top left first to bottom right
	function messagePlayers(start_pos, end_pos) 
		start_pos.stackpos = 255
		end_pos.stackpos = 255
		local position = deepcopy(start_pos)
		for x=start_pos.x,end_pos.x,1 do
			for y=start_pos.y,end_pos.y,1 do
				position.x = deepcopy(x)
				position.y = deepcopy(y)
				local player = getThingFromPosition(position) or 0
				if isPlayer(player.uid) then
					doPlayerSendTextMessage(player.uid, MESSAGE_STATUS_CONSOLE_ORANGE, "Congratulations! You have won. Claim your reward.")
					doPlayerSendTextMessage(player.uid, MESSAGE_STATUS_DEFAULT, "Congratulations! You have won. Claim your reward.")
				end
			end
		end
	end
	
	function createReward(level)
		doCreateItem(1740,1,{x=2048,y=2057,z=5,stackpos=255})
		doCreateItem(1740,1,{x=2050,y=2057,z=5,stackpos=255})
		local chests = {
			getTileItemById({x=2048,y=2057,z=5}, 1740).uid,
			getTileItemById({x=2050,y=2057,z=5}, 1740).uid
			
		}
		doSendMagicEffect(getThingPosition(chests[1]), 12)
		doSendMagicEffect(getThingPosition(chests[2]), 12)
		doItemSetAttribute(chests[1], "aid", 2000)
		doItemSetAttribute(chests[2], "aid", 2000)
		doItemSetAttribute(chests[1], "uid", 12666)
		doItemSetAttribute(chests[2], "uid", 18312)
		doAddContainerItemEx(chests[1], doCreateItemEx(12666, 1))
		doAddContainerItemEx(chests[2], doCreateItemEx(18312, 1))
	end
	
	if not isPlayer(target) and (string.find(getCreatureName(target), "Ancient Tower") ~= nil) then
		local level = 0
		if string.find(getCreatureName(target), "Easy") ~= nil then
			level = 1
		elseif string.find(getCreatureName(target), "Medium") ~= nil then
			level = 2
		elseif string.find(getCreatureName(target), "Hard") ~= nil then
			level = 3
		end
		messagePlayers(area[1],area[2])
		messagePlayers(area[3],area[4])
		
		addEvent(createReward, 2000, level)
	end
	return true
end