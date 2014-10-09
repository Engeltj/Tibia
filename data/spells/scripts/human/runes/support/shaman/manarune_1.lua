-- local combat = createCombatObject()
-- setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE) ---- what the color of the effect. you can do like RED/BLUE
-- setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
-- setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)
 
function onCastSpell(cid, var)
	local mana = getPlayerMaxMana(cid)
	local pos = getPlayerPosition(cid)
	local min = mana *.20
	local max = mana *.33
	local random = math.random(min, max)
	if getPlayerMana(cid) == mana then
		doPlayerSendCancel(cid, "You are already full mana.")
		doSendMagicEffect(pos, 2)
		return false
	end	
	doPlayerAddMana(cid, random)
	doSendMagicEffect(pos, CONST_ME_MAGIC_BLUE)
	doCreatureSay(cid, "Aaaah...", TALKTYPE_ORANGE_1)
	return true-- doCombat(cid, combat, var)
end