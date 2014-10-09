local function sendMessage(cid, message)
	doPlayerSendTextMessage(cid, MESSAGE_EVENT_ORANGE, message)
	doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, message)
end
whatTime = 2000

local function s(add)
	whatTime = whatTime + add
	return whatTime
end

local function endTutorial(cid)
	whatTime = 0
	doCreatureSetNoMove(cid, false)
	addEvent(doTeleportThing, s(5000), cid, {x=2258,y=2245,z=6})
	addEvent(sendMessage, s(2000), cid, "This brings us to the end of the tutorial, I wish you luck with your all journeys!")
	addEvent(sendMessage, s(8000), cid, "Feel free to bring any questions you might have to a CM or to anyone else in the community.")
end

local function mapShow(cid)
	whatTime = 0
	local locations = {
		["RushVille"] = {x=2492,y=2337,z=7},
		["Infernal Pits"] = {x=2578,y=2382,z=12},
		["Desert"] = {x=2528,y=1997,z=7},
		["The Jungle"] = {x=2382,y=1738,z=7},
		["City Sewers"] = {x=2199,y=2117,z=8}
	}
	addEvent(sendMessage, s(2000), cid, "Here is a quick view of a few different spawns..")
	s(5000)
	for k, v in pairs(locations) do
		addEvent(doTeleportThing, s(2000), cid, v)
		addEvent(sendMessage, s(0), cid, k)
	end
	addEvent(endTutorial, s(2000), cid)
end

local function features(cid)
	whatTime = 0
	addEvent(sendMessage, s(7000), cid, "I'm now going show you some of what we have to offer.")
	addEvent(doTeleportThing, s(5000), cid, {x=2258,y=2245,z=7})
	addEvent(sendMessage, s(2000), cid, "Here, we have the shop. To buy items, simply drag it off the counter.")
	addEvent(sendMessage, s(6000), cid, "Shop is cleaned, and re-stocked once every hour.")
	addEvent(doTeleportThing, s(5000), cid, {x=2244,y=2273,z=6})
	addEvent(sendMessage, s(2000), cid, "Just south of the depot, we have the archery,")
	addEvent(doTeleportThing, s(4000), cid, {x=2437,y=2187,z=6})
	addEvent(sendMessage, s(0), cid, "and just outside of the town you will find a promotional NPC.")
	addEvent(sendMessage, s(8000), cid, "As far as spawns go, they are scattered everywhere around the map.")
	addEvent(sendMessage, s(5000), cid, "This means you will have to travel! BUT there's good news.")
	addEvent(doTeleportThing, s(2000), cid, {x=2309,y=2260,z=6})
	addEvent(sendMessage, s(2000), cid, "This here, is a waypoint. Walk on it to 'unlock' that travel destination.")
	addEvent(doTeleportThing, s(6000), cid, {x=2310,y=2260,z=6})
	addEvent(doTeleportThing, s(500), cid, {x=2311,y=2260,z=6})
	addEvent(sendMessage, s(2000), cid, "Good job! Now you will be able to quick travel here from any other waypoint using '!travel <destination>'.")
	addEvent(mapShow, s(7000), cid)
	
end

local function monsters(cid)
	whatTime = 0
	local pos = {x=2222,y=2195,z=9}
	local monster = doCreateMonster("(Level 8) Gnoll", {x=pos.x, y=pos.y-2, z=pos.z})
	addEvent(sendMessage, s(500), cid, "Monsters are all assigned with a level.")
	addEvent(sendMessage, s(3500), cid, "This level represents their strength.")
	addEvent(sendMessage, s(4500), cid, "For example, if you were level 8, this Gnoll would be a fair fight.")
	addEvent(sendMessage, s(6000), cid, "It is always best to battle creatures of lower level to remain alive.")
	addEvent(doRemoveCreature, s(500), monster)
	addEvent(features, s(500), cid)
end

local function sellRune(cid)
	whatTime = 0
	local pos = {x=2222,y=2195,z=9}
	local function checkKnife()
		local iten = getTileItemById({x=pos.x-1, y=pos.y-1, z=pos.z},2403)
		if (iten.itemid > 0) then
			addEvent(checkKnife,50)
		else
			iten = getTileItemById({x=pos.x, y=pos.y-1, z=pos.z},2306)
			if (iten.itemid > 0) then
				doRemoveItem(iten.uid, 1)
			end
			addEvent(sendMessage, 500, cid, "Awesome! Now a little about monsters.")
			addEvent(monsters, 2500, cid)
		end
	end
	--remove old rune
	local rune = getTileItemById({x=pos.x, y=pos.y-1, z=pos.z},2297)
	doRemoveItem(rune.uid)
	
	addEvent(doCreateItem, s(50), 2306, {x=pos.x, y=pos.y-1, z=pos.z})
	addEvent(sendMessage, s(1000), cid, "Now, this is a sell rune, try using it on the knife.")
	addEvent(checkKnife,s(500))
end

local function upgradeRune(cid)
	local pos = {x=2222,y=2195,z=9}
	local function createKnife()
		local iten = doCreateItem(2403, {x=pos.x-1, y=pos.y-1, z=pos.z})
		doItemSetAttribute(iten, "attack", 0)
		doItemSetAttribute(iten, "defense", 0)
	end
	
	local function checkUpgrade()
		local iten = getTileItemById({x=pos.x-1, y=pos.y-1, z=pos.z},2403)
		if (iten.itemid > 0) then
			if not (getItemAttribute(iten.uid,'attack') > 0) then
				addEvent(checkUpgrade,50)
			else
				addEvent(sendMessage, 500, cid, "Perfect!")
				addEvent(sellRune, 1000, cid)
			end
		end
	end
	
	
	addEvent(doTeleportThing, s(5000), cid, pos)
	addEvent(doSendMagicEffect, s(0), pos, 12)
	
	--setItemAttack(knife.uid, 0)
	
	addEvent(sendMessage, s(1000), cid, "First of all, upgrade runes.")
	addEvent(createKnife, s(100))
	addEvent(doCreateItem, s(100), 2297, {x=pos.x, y=pos.y-1, z=pos.z})
	addEvent(sendMessage, s(3000), cid, "This is an upgrade rune, try using it on the knife.")
	addEvent(checkUpgrade,s(500))

end

function onLogin(cid)
	--if (getPlayerStorageValue(cid, 102) ~= 1) then
	local pos = getPlayerPosition(cid)
	doCreatureSetNoMove(cid, true)
	addEvent(sendMessage, s(0), cid, "Welcome " .. getCreatureName(cid) .. ", to Depths!")
	addEvent(sendMessage, s(3000), cid, "It would appear you are new. We are going to walk you through some of the server.")
	upgradeRune(cid)
	--end
	return true
end
