local gain = {
	gainArmor='&p+1',
	gainShield='&s+1',
	gainAttack='&a+1',
	gainDefense='&d+1',
	maxlvl = 15,
	blocked_ids = {8881}
}
	
if not setItemName then
    function setItemName(uid,name)
		return doItemSetAttribute(uid,'name',name)
    end
    function setItemArmor(uid,name)
		return doItemSetAttribute(uid,'armor',name)
    end
	function setItemDefense(uid,name)
		return doItemSetAttribute(uid,'defense',name)
	end
	function setItemAttack(uid,name)
		return doItemSetAttribute(uid,'attack',name)
	end
	function getItemAttack(uid)
		return getItemAttribute(uid,'attack')
	end
	function getItemDefense(uid)
		return getItemAttribute(uid,'defense')
	end
	function getItemArmor(uid)
	   if type(uid) == 'number' then
		  return getItemAttribute(uid,'armor')
	   else
		  return getItemInfo(uid.itemid).armor
	   end
	end
end

function getWeaponLevel(uid) -- Function by Mock the bear.
   uid = uid or 0
   local name = getItemName(uid.uid) or getItemInfo(uid.itemid).name or ''
   local lvl = string.match(name,'%s%+(%d+)%s*')
   return tonumber(lvl) or 0
end
function doTransform(s,i) -- Function by Mock the bear.
    local c = string.gsub(s,'@',gain.maxlvl)
    local c = string.gsub(c,'&a',(getItemAttack(i.uid) ~= 0 and getItemAttack(i.uid) or getItemInfo(i.itemid).attack))
    local c = string.gsub(c,'&d',(getItemDefense(i.uid) ~= 0 and getItemDefense(i.uid) or getItemInfo(i.itemid).defense))
    local c = string.gsub(c,'&s',(getItemDefense(i.uid) ~= 0 and getItemDefense(i.uid) or getItemInfo(i.itemid).defense))
    local c = string.gsub(c,'&p',(getItemArmor(i.uid) ~= 0 and getItemArmor(i.uid) or getItemInfo(i.itemid).armor))
    local c = string.gsub(c,'#',getWeaponLevel(i))
    local q = assert(loadstring('return '..c))
    return math.floor(assert(q()))
end

function onAdvance(cid, skill, oldLevel, newLevel)
	if (skill == SKILL__LEVEL) then
		local levels = newLevel - oldLevel
		doSendMagicEffect(getPlayerPosition(cid), 12)
		for b = 1,levels do
			for a = 1,10 do
				local item = getPlayerSlotItem(cid, a)
				if (item.itemid > 0) and ((getItemWeaponType(item.uid) >= 1 and getItemWeaponType(item.uid) <= 5) or (isArmor(item)) or (isWand(item.uid))) then
					local level = getWeaponLevel(item)
					if level < gain.maxlvl then
						local nm = getItemName(item.uid)
						local slot = nm:match('(%[.+%])') or ''
						slot = slot~='' and ' '..slot or slot
						level = level + 1
						setItemName(item.uid, getItemNameById(item.itemid)..' +'..(level)..slot)
						if isArmor(item) then
							local get = doTransform(gain.gainArmor,item)
							setItemArmor(item.uid,get)
						elseif isBow(item.uid) or isWand(item.uid) then
							setItemAttack(item.uid, doTransform(gain.gainAttack,item))
						elseif isWeapon(item.uid) then
							setItemAttack(item.uid, doTransform(gain.gainAttack,item))
							setItemDefense(item.uid, doTransform(gain.gainDefense,item))
						elseif isShield(item.uid) then
							setItemDefense(item.uid, doTransform(gain.gainShield,item))
						end
						local cost_upgrade = cost(item, level)
						doItemSetAttribute(item.uid, "description", "Cost to upgrade: "..cost_upgrade.." gp")
					end
				end
			end
		end
	end
	return true
end