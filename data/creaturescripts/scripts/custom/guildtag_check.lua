function onLogout(cid)
	local name = getPlayerName(cid)
	
	local glvl = 3 - getPlayerGuildLevel(cid)
	local rid = getPlayerGuildRankId(cid) - glvl
	--print("glvl : " .. glvl)
	local guid = getPlayerGUID(cid)
	local result = db.getResult("SELECT `name` FROM `players` WHERE `players`.`rank_id` = '"..rid.."';")
	if(result:getID() == -1) then
		name = string.gsub(name, '(%[%w+%]%s)', "")
		doPlayerChangeName(guid, getPlayerName(cid), name)
		--print("no results: " .. rid)
	else
		--print("results: " .. rid)
		local name_ldr = result:getDataString("name")
		local _, _, tag_ldr = string.find(name_ldr, '(%[%w+%])')
		local _, _, tag = string.find(name, '(%[%w+%])')
		if (tag_ldr ~= nil) then
			tag_ldr = string.gsub(tag_ldr, "%[", "")
			tag_ldr = string.gsub(tag_ldr, "%]", "")
		end
		if (tag_ldr == nil) then
			name = string.gsub(name, '(%[%w+%]%s)', "")
			doPlayerChangeName(guid, getPlayerName(cid), name)
			return true		
		elseif (tag == nil) then
			name = "[" .. tag_ldr .. "] " .. name
		else
			name = string.gsub(name, '(%[%w+%])', "%["..tag_ldr.."%]", 1)
		end
		--print(name)
		doPlayerChangeName(guid, getPlayerName(cid), name)
	end
	return true
end