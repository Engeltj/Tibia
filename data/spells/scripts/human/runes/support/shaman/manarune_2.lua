local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE) ---- what the color of the effect. you can do like RED/BLUE
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)
 
function onCastSpell(cid, var)
	local mana = getPlayerMaxMana(cid)
	local pos = getPlayerPosition(cid)
	if getPlayerMana(cid) == mana then
		doPlayerSendCancel(cid, "You are already full mana.")
		doSendMagicEffect(pos, 2)
		return false
	end
	local min = mana / 11
	local max = mana / 6
	local managain = math.random(min, max)
	doPlayerAddMana(cid, managain)
	doCreatureSay(cid, "Aaaah...", TALKTYPE_ORANGE_1)
	return doCombat(cid, combat, var)
end