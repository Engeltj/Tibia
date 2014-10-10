function onStepIn(cid, item, toPos, itemEx, fromPos)
	local hit = math.random(1,10)
	
	if hit > 7 then
		doCreatureAddHealth(cid, -10000, 5)
		doRemoveItem(item.uid, 1)
		addEvent(doCreateItem, 60*1000*5, 10572, 1, toPos)
		doSendMagicEffect(toPos, 5)
	end
	return true
end	
		
function onStepOut(cid, item, toPos, itemEx, fromPos)
	doCreatureAddHealth(cid, -10000, 5)
	doRemoveItem(item.uid, 1)
	addEvent(doCreateItem, 60*1000*5, 10572, 1, fromPos)
	doSendMagicEffect(fromPos, 5)
	doSendMagicEffect(toPos, 0)
	return true
end