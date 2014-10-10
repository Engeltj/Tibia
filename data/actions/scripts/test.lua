
function onUse(cid, item, fromPosition, itemEx, toPosition)
	if isCreature(itemEx.uid) then
		doCreatureSetSkullType(itemEx.uid, 4)
	end
	doCreatureSetSkullType(cid, 3)
	
	return true
end