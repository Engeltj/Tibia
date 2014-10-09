function onKill(cid, target, damage, flags)
	if not isPlayer(target) and not isPlayer(getCreatureMaster(target)) and isPlayer(cid) then
		local health = damage / 25
		health = math.ceil(health)
		if (health <= 0) then
			health = 1
		end
		local money = math.random(health*10) or 0
		item = doPlayerAddMoney(cid, money)
		local money = getPlayerMoney(cid)
		doPlayerRemoveMoney(cid, money)
		doPlayerAddMoney(cid, money)
	end
	return true
end

-- 5909
-- 5914
-- 5913
-- 5910
-- 5912
-- 5911