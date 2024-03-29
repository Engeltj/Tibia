function Player:onBrowseField(position)
	return true
end

function Player:onLook(thing, position, distance)
	local description = "You see " .. thing:getDescription(distance)
	if thing:getId() == 8880 then
		local subHp = math.ceil((self:getHealth()/4 - 1)*-1)
		if subHp ~= 0 then
			self:addHealth(subHp)
		end
		doSendMagicEffect(self:getPosition(),3)
		return false
	elseif self:getGroup():getAccess() then
		if thing:isItem() then
			description = string.format("%s\nItemID: [%d]", description, thing:getId())

			local actionId = thing:getActionId()
			if actionId ~= 0 then
				description = string.format("%s, ActionID: [%d]", description, actionId)
			end
			
			local uniqueId = thing:getAttribute(ITEM_ATTRIBUTE_UNIQUEID)
			if uniqueId > 0 and uniqueId < 65536 then
				description = string.format("%s, UniqueId: [%d]", description, uniqueId)
			end
			
			description = description .. "."
			local itemType = thing:getType()
			
			local transformEquipId = itemType:getTransformEquipId()
			local transformDeEquipId = itemType:getTransformDeEquipId()
			if transformEquipId ~= 0 then
				description = string.format("%s\nTransformTo: [%d] (onEquip).", description, transformEquipId)
			elseif transformDeEquipId ~= 0 then
				description = string.format("%s\nTransformTo: [%d] (onDeEquip).", description, transformDeEquipId)
			end

			local decayId = itemType:getDecayId()
			if decayId ~= -1 then
				description = string.format("%s\nDecayTo: [%d]", description, decayId)
			end
		elseif thing:isCreature() then
			local str = "%s\nHealth: [%d / %d]"
			if thing:getMaxMana() > 0 then
				str = string.format("%s, Mana: [%d / %d]", str, thing:getMana(), thing:getMaxMana())
			end
			description = string.format(str, description, thing:getHealth(), thing:getMaxHealth()) .. "."
		end
		
		local position = thing:getPosition()
		description = string.format(
			"%s\nPosition: [X: %d] [Y: %d] [Z: %d].",
			description, position.x, position.y, position.z
		)
		
		if thing:isCreature() then
			if thing:isPlayer() then
				description = string.format("%s\nIP: [%s].", description, Game.convertIpToString(thing:getIp()))
			end
		end
	end
	self:sendTextMessage(MESSAGE_INFO_DESCR, description)
end

function Player:onLookInBattleList(creature, distance)
	local description = "You see " .. creature:getDescription(distance)
	if self:getGroup():getAccess() then
		local str = "%s\nHealth: [%d / %d]"
		if creature:getMaxMana() > 0 then
			str = string.format("%s, Mana: [%d / %d]", str, creature:getMana(), creature:getMaxMana())
		end
		description = string.format(str, description, creature:getHealth(), creature:getMaxHealth()) .. "."

		local position = creature:getPosition()
		description = string.format(
			"%s\nPosition: [X: %d] [Y: %d] [Z: %d].",
			description, position.x, position.y, position.z
		)
		
		if creature:isPlayer() then
			description = string.format("%s\nIP: [%s].", description, Game.convertIpToString(creature:getIp()))
		end
	end
	self:sendTextMessage(MESSAGE_INFO_DESCR, description)
end

function Player:onLookInTrade(partner, item, distance)
	self:sendTextMessage(MESSAGE_INFO_DESCR, "You see " .. item:getDescription(distance))
end

function Player:onLookInShop(itemType, count)
	return true
end

function Player:onMoveItem(item, count, fromPosition, toPosition)
	if item:getActionId() == 2038 then
		if (self:getStorageValue(102) == -1) then
			self:addItem(item.itemid, 1)
			if item:getId() == 2403 then
				self:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You've chosen to start your journey with a sword!")
				self:setStorageValue(102, 1)
			elseif item:getId() == 2382 then
				self:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You've chosen to start your journey with a club!")
				self:setStorageValue(102, 2)
			elseif item:getId() == 2388 then
				self:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You've chosen to start your journey with an axe!")
				self:setStorageValue(102, 3)
			end
		else
			if item:getId() == 2403 then
				self:sendTextMessage(MESSAGE_INFO_DESCR, "You've changed your weapon class to sword!")
				self:setStorageValue(102, 1)
			elseif item:getId()  == 2382 then
				self:sendTextMessage(MESSAGE_INFO_DESCR, "You've changed your weapon class to club!")
				self:setStorageValue(102, 2)
			elseif item:getId()  == 2388 then
				self:sendTextMessage(MESSAGE_INFO_DESCR, "You've changed your weapon class to axe!")
				self:setStorageValue(102, 3)
			end
		end
		doSendMagicEffect(self:getPosition(), 12)
		return false
	end
	return true
end

function Player:onMoveCreature(creature, fromPosition, toPosition)
	return true
end

function Player:onTurn(direction)
	return true
end

function Player:onTradeRequest(target, item)
	return true
end

function Player:onTradeAccept(target, item, targetItem)
	return true
end

function Player:onGainExperience(source, exp, rawExp)
	return exp
end

function Player:onLoseExperience(exp)
	return exp
end
