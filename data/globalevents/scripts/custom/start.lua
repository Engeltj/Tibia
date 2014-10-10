function onStartup()
	local iten = getTileItemById({x=2248,y=2241,z=6}, 1444)
	if (iten.itemid == 1444) then
		doItemSetAttribute(iten.uid, "name", "Hailbrook's Guard")
	else
		print ("Failed to name Hailbrook statue")
	end
	
	iten = getTileItemById({x=2055,y=2240,z=8}, 2190)
	if (iten.itemid == 2190) then
		doItemSetAttribute(iten.uid, "attack", 25)
	else
		print ("Failed to set item 2190 attack")
	end
	
	iten = getTileItemById({x=2057,y=2240,z=8}, 7381)
	if (iten.itemid == 7381) then
		doItemSetAttribute(iten.uid, "attack", 25)
		doItemSetAttribute(iten.uid, "defense", 25)
	else
		print ("Failed to set item 7381 attribute")
	end
	
	iten = getTileItemById({x=2059,y=2240,z=8}, 2429)
	if (iten.itemid == 2429) then
		doItemSetAttribute(iten.uid, "attack", 25)
		doItemSetAttribute(iten.uid, "defense", 25)
	else
		print ("Failed to set item 2429 attribute")
	end
	
	iten = getTileItemById({x=2055,y=2249,z=8}, 2530)
	if (iten.itemid == 2530) then
		doItemSetAttribute(iten.uid, "defense", 25)
	else
		print ("Failed to set item 2530 attribute")
	end
	
	iten = getTileItemById({x=2057,y=2249,z=8}, 2406)
	if (iten.itemid == 2406) then
		doItemSetAttribute(iten.uid, "attack", 25)
		doItemSetAttribute(iten.uid, "defense", 25)
	else
		print ("Failed to set item 2406 attribute")
	end
	
	iten = getTileItemById({x=2059,y=2249,z=8}, 2456)
	if (iten.itemid == 2456) then
		doItemSetAttribute(iten.uid, "attack", 25)
	else
		print ("Failed to set item 2456 attribute")
	end
	
	return true
end
