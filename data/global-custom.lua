function setHealingFormula(combat, type, minl, maxl, minm, maxm, min, max)
	local min, max = min or 0, max or 0
	return setCombatFormula(combat, type, 1, 0, 1, 0, minl, maxl, minm, maxm, min, max)
end

function setAttackFormula(combat, type, minl, maxl, minm, maxm, min, max)
	local min, max = min or 0, max or 0
	return setCombatFormula(combat, type, -1, 0, -1, 0, minl, maxl, minm, maxm, -min, -max)
end


-- Player must be offline for this to actually work
function doPlayerChangeName(current, new)
	if (not getPlayerByNameWildcard(current))
		db.query("UPDATE `players` SET name=\"" .. new .. "\" WHERE name=\"" .. current .. "\";")
		return true
	else
		return false
	end
end

-- @params guild ID
function getGuildTag(gid)
	local result = db.storeQuery("SELECT `tag` FROM `guilds` WHERE id=" .. gid .. ";")
	local tag = result:getDataString("name")
	return tag
end

-- tag outfits
red = {lookType = 128, lookHead = 113,lookBody = 113,lookLegs = 113,lookFeet = 95,lookAddons = 0} -- it
blue = {lookType = 128, lookHead = 88,lookBody = 88,lookLegs = 88,lookFeet = 95,lookAddons = 0} -- not it

function isArmor(uid) -- Function by Mock the bear.
    if (getItemInfo(uid.itemid).armor ~= 0) and (getItemWeaponType(uid.uid) == 0) then
		return true
	end
	return false
end
function isWeapon(uid) -- Function by Mock the bear.
	uid = uid or 0
	local f = getItemWeaponType(uid)
	if f == 1 or f == 2 or f == 3 then
		return true
	end
	return false
end
function isBow(uid) -- Function by Mock the bear.
	uid = uid or 0
	if getItemWeaponType(uid) == 4 then
		return true
	end
	return false
end
function isShield(uid) -- Function by Mock the bear.
	uid = uid or 0
	if getItemWeaponType(uid) == 5 then
		return true
	end
	return false
end
function isWand(uid) -- Function by Tim
	uid = uid or 0
	if getItemWeaponType(uid) == 7 then
		return true
	end
	return false
end

function getBow(cid)
	local rh = getPlayerSlotItem(cid, CONST_SLOT_RIGHT) or false
	local lh = getPlayerSlotItem(cid, CONST_SLOT_LEFT) or false
	local bow = false
	if (rh.itemid > 0) and isBow(rh.uid) then
		--print(rh.itemid)
		bow = rh.uid
	elseif (lh.itemid > 0) and isBow(lh.uid) then
		--print(lh.itemid)
		bow = lh.uid
	end
	return bow
end
function getWand(cid)
	local wep = getPlayerWeapon(cid) or 0
	local wand = false
	if (wep.itemid > 0) and isWand(wep.uid) then
		wand = wep.uid
	end
	return wand
end
function getAmmo(cid)
	local ammo = getPlayerSlotItem(cid, CONST_SLOT_AMMO) or false
	local arrows = false
	if (ammo.itemid > 0) then
		arrows = ammo.uid
	end
	return arrows
end

function getCreatures(pos, radius, hit_array)
	creatures = {}
	for x = pos.x-radius, pos.x+radius do
		for y = pos.y-radius, pos.y+radius do
			if not (x == pos.x and y == pos.y) then
				local newpos = {x=x, y=y,z=pos.z}
				local thing = getTopCreature(newpos)
				if isCreature(thing.uid) and not isNpc(thing.uid) then
					if not isInArray(hit_array, thing.uid) then
						table.insert(creatures, thing.uid)
					end
				end
			end
		end
	end
	return creatures
end

function fixOrphanSummon(cid)
	if not isPlayer(cid) then
		return
	end
	local summons = getCreatureSummons(cid)
	for i,v in ipairs(summons) do
		local p_pos = getPlayerPosition(cid)
		local c_pos = getPlayerPosition(v)
		local dis = getDistanceBetween(c_pos, p_pos)
		if (dis > 8) or (c_pos.z ~= p_pos.z) then
			doTeleportThing(v, p_pos)
			doSendMagicEffect(p_pos, 10)
		end
	end
	if #summons > 0 then
		addEvent(fixOrphanSummon, 5000, cid)
	end
end

local function exhaust(cid, storage, seconds)
	if((os.time() - getPlayerStorageValue(cid, storage)) >= length) or (getPlayerStorageValue(cid, storage) == 0) then
		setPlayerStorageValue(cid, storage, os.time())
		return true
	else
		local wait = (exhaust.length - (os.time() - getPlayerStorageValue(cid, exhaust.storage)))
		if wait >= 60 then
			doPlayerSendCancel(cid, "You must wait " ..round((wait/60),0).. " minute(s) to do this.")
		else
			doPlayerSendCancel(cid, "You must wait " ..round(wait,0).. " seconds to do this.")
		end
		return false
	end
end


