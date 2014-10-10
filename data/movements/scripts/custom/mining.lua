function onStepIn(cid, item, toPos, itemEx, fromPos)
	local direction = fromPos.x - toPos.x
	if direction < 0 then
		local pos = toPos
		pos.x = pos.x + 1
		pos.stackpos = 255
		doPlayerSendCancel(cid, fromPos.x-pos.x)
		if isPlayer(getThingFromPosition(pos).uid) and fromPos.x - pos.x ~= 0 then
			doTeleportThing(cid, fromPos, false)
		end
		return true
	else
		local pos = toPos
		pos.x = pos.x - 1
		pos.stackpos = 255
		doPlayerSendCancel(cid, fromPos.x-pos.x)
		if isPlayer(getThingFromPosition(pos).uid) and fromPos.x - pos.x ~= 0 then
			doTeleportThing(cid, fromPos, false)
		end
	end
end