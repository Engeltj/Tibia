local function addCloths(container, level)
	local containerCap = getContainerCap(container)
	if containerCap > 0 then
		
		local cloths = {
			{id=5909, chance=math.floor(level/5),lvl_max=100},
			{id=5914, chance=math.floor(level/50),lvl_max=250},
			{id=5913, chance=math.floor(level/100),lvl_max=500},
			{id=5910, chance=math.floor(level/200),lvl_max=750},
			{id=5912, chance=math.floor(level/400),lvl_max=1250},
			{id=5911, chance=math.floor(level/800),lvl_max=2000}
		}
		for x=1,#cloths do
			local drop = math.random(1,100)
			
			if level < cloths[x].lvl_max and cloths[x].chance > drop then
				local iten = doCreateItemEx(cloths[x].id, 1)
				doAddContainerItemEx(container, iten)
			-- elseif  level < cloths[x].lvl_max then
				-- print(x.." :chance: " .. cloths[x].chance .. ", drop: " ..drop)
			end
		end
	end
	
end


function recursive(container, level)
	local containerSize = getContainerSize(container)
	for count = 0, containerSize-1 do
		local bodycontainer = getContainerItem(container, count)
		local i = math.random(1,100)
		local attr_atk = 0
		local attr_def = 0
		if (i < 50) then
			attr_atk = math.random(55,70)
			attr_def = math.random(55,70)
		elseif (i >= 50) and (i<90) then
			attr_atk = math.random(70,80)
			attr_def = math.random(70,80)
		elseif (i >= 90) and (i<100) then
			attr_atk = math.random(80,100)
			attr_def = math.random(80,100)
		else
			attr_atk = math.random(101,115)
			attr_def = math.random(101,115)
		end
		
		
		if isWeapon(bodycontainer.uid) or isBow(bodycontainer.uid) or isWand(bodycontainer.uid) then
			if isBow(bodycontainer.uid) or isWand(bodycontainer.uid) then --getItemAttribute(bodycontainer.uid, "slottype") == "two-handed" then
				doItemSetAttribute(bodycontainer.uid, "attack", math.ceil(level*attr_atk/100))
			else
				doItemSetAttribute(bodycontainer.uid, "attack", math.ceil(level*attr_atk/100))
				if getItemAttribute(bodycontainer.uid, "slottype") == "two-handed" then
					doItemSetAttribute(bodycontainer.uid, "defense", math.ceil(level*attr_def/100)*2)
				else
					doItemSetAttribute(bodycontainer.uid, "defense", math.ceil(level*attr_def/100))
				end
			end
		elseif isShield(bodycontainer.uid) then
			doItemSetAttribute(bodycontainer.uid, "defense", math.ceil(level*attr_def/100))
		elseif isArmor(bodycontainer) then
			doItemSetAttribute(bodycontainer.uid, "armor", math.ceil(level*attr_def/100))
		elseif isItemContainer(bodycontainer.itemid) == true then
			recursive(bodycontainer.uid, level)
		end
	end
end

function modifyItems(cid, player_oldpos, target_pos, corpse_id, level, try)
	target_pos.stackpos = 255
	local corpse = getTileItemById(target_pos, corpse_id)

	if corpse.itemid > 0 and isContainer(corpse.uid) then
		addCloths(corpse.uid, level)
		recursive(corpse.uid, level)
	elseif (try <= 4) == true then
		addEvent(modifyItems, 150, cid, player_oldpos, target_pos, corpse_id, level, try+1)
	end
end

function createEssence(cid, target_name, target_pos, corpse_id, try)
	local corpse = getTileItemById(target_pos, corpse_id)

	if corpse.itemid > 0 and isContainer(corpse.uid) then
		doRemoveItem(corpse.uid, 1)
		doCreateItem(2361, 1 ,target_pos)
		local essence = getTileItemById(target_pos, 2361)
		if (essence.itemid > 0) then
			doItemSetAttribute(essence.uid, "name", target_name)
		end
	elseif (try <= 8) then
		addEvent(createEssence, 100, cid, target_name, target_pos, corpse_id, try+1)
	end
end

function onKill(cid, target, lastHit)
	if not isPlayer(target) then
		local target_name = getCreatureName(target)
		local target_pos = getCreaturePosition(target)
		local player_pos = getCreaturePosition(cid)
		local level = tonumber(getCreatureMaxHealth(target) / 25)
		local info = getMonsterInfo(getCreatureName(target))
		local rand = math.random(250)
		--doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, )
		--doCreatureSetNoMove(cid, true)
		if (rand == 150) then
			addEvent(createEssence, 100, cid, target_name, target_pos, info.lookCorpse, 1)
		else
			addEvent(modifyItems, 100, cid, player_pos, target_pos, info.lookCorpse, level, 1)
		end
	end
	return true
end