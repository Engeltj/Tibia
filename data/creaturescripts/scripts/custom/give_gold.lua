function onKill(cid, target, lastHit)
	local creature = Creature(target)
	if not creature:isPlayer() and (creature:getMaster() == nil) and Creature(cid):isPlayer() then
		local damage = 0
		for id, dmg in pairs(creature:getDamageMap()) do
			if id == cid then
				damage = dmg.total
				break
			end
		end=
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