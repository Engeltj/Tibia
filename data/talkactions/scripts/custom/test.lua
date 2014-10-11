<<<<<<< HEAD
function onSay(cid, words, param)
	if(param == "") then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Invalid Syntax.. [ITEMID], [PRICE]")
		return true
	end
	local t = string.explode(param, ",")
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "" ..tonumber(t[1]).. ":" ..tonumber(t[2]).. "")
	result = mysqlQuery("SELECT `name` FROM `players` WHERE `players`.`name` = '" .. getPlayerName(cid) .. "'", "name")
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "" ..result.name.. "")
	return false
end
=======
function onSay(cid, words, param)
	if(param == "") then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Invalid Syntax.. [ITEMID], [PRICE]")
		return true
	end
	local t = string.explode(param, ",")
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "" ..tonumber(t[1]).. ":" ..tonumber(t[2]).. "")
	result = mysqlQuery("SELECT `name` FROM `players` WHERE `players`.`name` = '" .. getPlayerName(cid) .. "'", "name")
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "" ..result.name.. "")
	return false
end
>>>>>>> 9d0ddee1118b124621ed9f7b98dc415f01be9357
