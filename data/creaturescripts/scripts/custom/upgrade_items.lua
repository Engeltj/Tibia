local gain = {
	gainArmor='&p+1',
	gainShield='&s+1',
	gainAttack='&a+1',
	gainDefense='&d+1',
	maxlvl = 15,
	blocked_ids = {8881}
}

function getWeaponLevel(item)
   local name = item:getName() or ''
   local lvl = string.match(name,'%s%+(%d+)%s*')
   return tonumber(lvl) or 0
end

function doTransform(s,item) -- Function by Mock the bear.
    local c = string.gsub(s,'@', gain.maxlvl)
    local c = string.gsub(c,'&a', item:getAttribute("attack") or 0)
    local c = string.gsub(c,'&d', item:getAttribute("defense") or 0)
    local c = string.gsub(c,'&s', item:getAttribute("defense") or 0)
    local c = string.gsub(c,'&p', item:getAttribute("armor") or 0)
    local c = string.gsub(c,'#', getWeaponLevel(item))
    local q = assert(loadstring('return '..c))
    return math.floor(assert(q()))
end

function onAdvance(cid, skill, oldLevel, newLevel)
	local player = Player(cid)
	print ('ADVANCED ' .. tostring(newLevel) .. ' ' .. tostring(skill))
	if (skill == 8) then
		print ('ADVANCED2 ' .. tostring(newLevel))
		local levels = newLevel - oldLevel
		--doSendMagicEffect(getPlayerPosition(cid), 12)
		for b = 1,levels do
			for a = 1,10 do
				local item = player:getSlotItem(a)
				if item ~= nil then
					local itemType = item:getType()
					if (item:getId() > 0) and (isWeapon(item) or isBow(item) or isWand(item) or isShield(item) or isArmor(item)) then
						print (item:getId())
						local level = getWeaponLevel(item)
						if level < gain.maxlvl then
							local nm = item:getName()
							local slot = nm:match('(%[.+%])') or ''
							slot = slot~='' and ' '..slot or slot
							level = level + 1

							item:setAttribute("name", itemType:getName()..' +'..(level)..slot)
							if isArmor(item) then
								local newArmor = doTransform(gain.gainArmor,item)
								item:setAttribute("armor", newArmor)
							elseif isBow(item) or isWand(item) then
								local newAttack = doTransform(gain.gainAttack,item)
								item:setAttribute("attack", newAttack)
							elseif isWeapon(item) then
								local newAttack = doTransform(gain.gainAttack,item)
								local newDefense = doTransform(gain.gainDefense,item)
								item:setAttribute("attack", newAttack)
								item:setAttribute("defense", newDefense)
							elseif isShield(item) then
								local newDefense = doTransform(gain.gainShield,item)
								item:setAttribute("defense", newDefense)
							end
							local cost_upgrade = cost(item, level)
							item:setAttribute("description", "Cost to upgrade: "..cost_upgrade.." gp")
						end
					end
				end
			end
		end
	end
	return true
end