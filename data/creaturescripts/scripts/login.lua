function onLogin(cid)
	local player = Player(cid)

	local loginStr = "Welcome to " .. configManager.getString(configKeys.SERVER_NAME) .. "!"
	if player:getLastLoginSaved() <= 0 then
		loginStr = loginStr .. " Please choose your outfit."
		player:sendOutfitWindow()
	else
		if loginStr ~= "" then
			player:sendTextMessage(MESSAGE_STATUS_DEFAULT, loginStr)
		end

		loginStr = string.format("Your last visit was on %s.", os.date("%a %b %d %X %Y", player:getLastLoginSaved()))
	end
	player:sendTextMessage(MESSAGE_STATUS_DEFAULT, loginStr)



	--Custom
	player:registerEvent(cid, "UpgradeItems")
	player:registerEvent(cid, "onAdvancePlayer")
	player:registerEvent(cid, "GiveGold")
	player:registerEvent(cid, "ModifyAttr")
	player:registerEvent(cid, "QuestsKill")
	--player:registerEvent("Dota")
	player:registerEvent(cid, "DeathReturn")
	player:registerEvent("StealShop")
	player:registerEvent("FirstWeapon")
	player:registerEvent("Interest")
	--player:registerEvent("Tutorial")
	player:registerEvent("StartDie")
	player:registerEvent("AOEProtect")
	--player:registerEvent("Daily quests killing")
	player:registerEvent("Friendly") -- guild tags friendly fire
	player:registerEvent("TagCheck") -- Guild tags
	--player:registerEvent("Tag") -- game of tag

	player:registerEvent("PlayerDeath")
	return true
end
