local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) 			end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) 		end
function onCreatureSay(cid, type, msg) 		npcHandler:onCreatureSay(cid, type, msg) 	end
function onThink() 							npcHandler:onThink() 						end
function onPlayerEndTrade(cid)				npcHandler:onPlayerEndTrade(cid)			end
function onPlayerCloseChannel(cid)			npcHandler:onPlayerCloseChannel(cid)		end


function creatureSayCallback(cid, type, msg)
	if(not npcHandler:isFocused(cid)) then
		return false
	end

	local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
	if(msgcontains(msg, 'tag')) and (talkState[talkUser] ~= 2) then
		local name = getPlayerName(cid)
		local _, _, tag = string.find(name, '(%[%w+%])')
		local gid = getPlayerGuildId(cid)
		local rid = getPlayerGuildRankId(cid) % 3
		
		if not (gid > 0) then
			selfSay('You must be in a guild to purchase a tag.', cid)
			talkState[talkUser] = 0
			return true
		end
		
		if (rid == 1) then
			if (tag ~= nil) then
				selfSay('What would you like to change you guild tag to?', cid)
			else
				selfSay('What would you like to set you guild tag to?', cid)
			end
			talkState[talkUser] = 2
			--local result = db.getResult("SELECT `name` FROM `players` WHERE `players`.`name` LIKE '["..newtag.."]%';")
		else
			selfSay('You must be the guild leader to set or change the tag.', cid)
		end
		--talkState[talkUser] = 1
	elseif (talkState[talkUser] == 2) then
		if (string.len(msg) > 5) then
			selfSay('Tag is too long, give me another.', cid)
			return true
		end
		
		local name = getPlayerName(cid)
		local _, _, tag = string.find(name, '(%[%w+%])')
		local newtag = msg
		newtag = string.gsub(newtag, "%[", "")
		newtag = string.gsub(newtag, "%]", "")
		if (tag == nil) then
			selfSay("For 10cc, would you like to set your guild tag to {"..newtag.."}? To change this later, it will cost 25cc.", cid)
		else
			selfSay("For 25cc, would you like to change your guild tag to {"..newtag.."}?", cid)
		end
		setPlayerStorageValue(cid, 16002, newtag)
		talkState[talkUser] = 3
	elseif (talkState[talkUser] == 3) and (msgcontains(msg, 'yes')) then
		local name = getPlayerName(cid)
		local _, _, tag = string.find(name, '(%[%w+%])')
		local cost = 100000
		if tag ~= nil then
			cost = 250000
		end
		if (doPlayerRemoveMoney(cid, cost)) then
			local newtag = getPlayerStorageValue(cid, 16002)
			--local guid = getPlayerGUID(cid)
			-- if (tag == nil) then
				-- name = "[" .. newtag .. "] " .. name
			-- else
				-- name = string.gsub(name, '(%[%w+%])', "%["..newtag.."%]", 1)
			-- end
			--doPlayerChangeName(guid, getPlayerName(cid), name)
			local rid = getPlayerGuildRankId(cid)
			local result = db.getResult("SELECT `name` FROM `players` WHERE `players`.`rank_id` BETWEEN '"..rid.."' AND '"..(rid+2).."';")
			if (result:getID() ~= -1) then
				while true do
					local name = result:getDataString("name")
					local new_name = result:getDataString("name")
					--print ("OLD: " .. temp)
					local guid = getPlayerGUIDByName(new_name)
					_, _, tag = string.find(new_name, '(%[%w+%])')
					if (tag == nil) then
						new_name = "[" .. newtag .. "] " .. new_name
					else
						new_name = string.gsub(new_name, '(%[%w+%])', "%["..newtag.."%]", 1)
					end
					local cid2 = getPlayerByName(name)
					
					if (cid2 ~= nil) then
						doPlayerSendTextMessage(cid2, MESSAGE_EVENT_ADVANCE, "Your tag has been set. Relog for updated tag.")
					end
					doPlayerChangeName(guid, name, new_name)
					
					--print ("NEW: " .. temp)
					if not(result:next()) then
						break
					end
				end
				result:free()
			end
			
			setPlayerStorageValue(cid, 16002, -1)
			selfSay('Your tag has been updated! You must relog for these changes to apply.', cid)
		else
			selfSay('You do not have enough money! Come again.', cid)
			
		end
		talkState[talkUser] = 0
	elseif (talkState[talkUser] == 3) and (msgcontains(msg, 'no')) then
		talkState[talkUser] = 2
		selfSay('Ok then, tell me the tag you wish to use.', cid)
	end
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
