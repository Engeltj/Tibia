function onLogout(cid)
	local name = getPlayerName(cid)
	local tag = getGuildTag(getPlayerGuildId(cid)) or ""

	if(string.len(tag) == 0) then
		local newname = string.gsub(name, '(%[%w+%])', "")
		doPlayerChangeName(getPlayerName(cid), newname)
	else
		local newname = string.gsub(name, '(%[%w+%])', "%["..tag.."%]")
		doPlayerChangeName(getPlayerName(cid), newname)
	end
	return true
end