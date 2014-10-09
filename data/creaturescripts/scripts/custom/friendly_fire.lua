function onTarget(cid, target)
	if isPlayer(target) then
		ptag = getPlayerName(cid)
		ttag = getPlayerName(target)
		local _, _, ptag = string.find(ptag, '(%[%w+%])')
		local _, _, ttag = string.find(ttag, '(%[%w+%])')
		
		if (ptag ~= nil) and (ttag ~= nil) then
			if (ptag == ttag) then
				doPlayerSendCancel(cid, "This is a friendly target.")
				return false
			end
		end
		
	end
	return true
end