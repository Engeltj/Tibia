function onLook(cid, thing, position, lookDistance)
	if thing.itemid == 8880 then
		local subHp = math.ceil((getCreatureHealth(cid)/4 - 1)*-1)
		if subHp ~= 0 then
			doCreatureAddHealth(cid, subHp)
		end
		doSendMagicEffect(getPlayerPosition(cid),3)
		return false
	end
	return true
end