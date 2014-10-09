local mobsList = {
	["dragon"] = {storage = 44444, raceName = "Dragons"}, -- storage have to be exacly the same as in your npc file!
	["demon"] = {storage = 45554, raceName = "Demons"}
}
 
function onKill(cid, target, lastHit)
	local mob = mobsList[getCreatureName(target):lower()]
	if mob == true then
		local check = getPlayerStorageValue(cid, mob.storage)
		if check >= 0 then
			doPlayerSetStorageValue(cid, mob.storage, check + 1)
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, mob.raceName .. " killed: " .. (check + 1) .. ".")
		end
	end
	return true
end