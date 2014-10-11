<<<<<<< HEAD
function onSay(cid, words, param)
	local name = getPlayerName(cid)
	flag = false
	if not(param == "") then
		name = param
		flag = true
	end
	local result = db.getResult("SELECT `balance` FROM `players` WHERE `players`.`name` = '" .. name .. "';")
	if(result:getID() == -1) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Player not found.")
		return true
	end
	if not flag then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Your current balance is " ..doNumberFormat(result:getDataString("balance")).. " gp.")
	else
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, name .. "'s balance is " ..doNumberFormat(result:getDataString("balance")).. " gp.")
	end
	result:free()
	return true
end
=======
function onSay(cid, words, param)
	local name = getPlayerName(cid)
	flag = false
	if not(param == "") then
		name = param
		flag = true
	end
	local result = db.getResult("SELECT `balance` FROM `players` WHERE `players`.`name` = '" .. name .. "';")
	if(result:getID() == -1) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Player not found.")
		return true
	end
	if not flag then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Your current balance is " ..doNumberFormat(result:getDataString("balance")).. " gp.")
	else
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, name .. "'s balance is " ..doNumberFormat(result:getDataString("balance")).. " gp.")
	end
	result:free()
	return true
end
>>>>>>> 9d0ddee1118b124621ed9f7b98dc415f01be9357
