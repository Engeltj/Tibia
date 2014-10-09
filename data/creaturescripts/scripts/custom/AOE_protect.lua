function onAreaCombat(cid, ground, position, aggressive)
	local thing = getTopCreature(position)
	
	if (isCreature(thing.uid)) then
		if (getCreatureMaster(thing.uid) == cid) then
			return false
		end
		print (getPlayerModes(cid).secure)
		if aggressive and getPlayerModes(cid).secure == 0  and isPlayer(thing.uid) and thing.uid ~= cid then
			addEvent(doPlayerSendCancel,0,cid, "Turn secure mode off")
			doSendMagicEffect(position, 2)
			return false
		end
	end
	return true
end