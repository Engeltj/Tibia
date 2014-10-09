-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 100ms
local combat1_Brush_6 = createCombatObject()
setCombatParam(combat1_Brush_6, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatParam(combat1_Brush_6, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_BOLT)
setCombatParam(combat1_Brush_6, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat1_Brush_6,createCombatArea({{3}}))
--function getDmg_Brush_6(cid, level, maglevel)
--	return (10)*-1,(20)*-1 
--end
--function onGetFormulaValues(cid, level, skill)
	--return -(((skill + 15) / 2) + (level / 3)), -((skill + 15) + (level / 1)), 0
--end
function onGetFormulaValues(cid, level, skill, attack, factor)
	local bow = getBow(cid)
	if not bow then
		attack = 0
	end
	local bonus = 1.7
	local min_dmg = level/5 * bonus
	local max_dmg = (0.09*1*skill*attack+min_dmg) * bonus
	return -min_dmg, -max_dmg
end

setCombatCallback(combat1_Brush_6, CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")
local dfcombat1_Brush_6 = {CONST_ANI_BOLT,0,0}

-- =============== CORE FUNCTIONS ===============
local function RunPart(c,cid,var,dirList,dirEmitPos) -- Part
	if (isCreature(cid)) then
		doCombat(cid, c, var)
		if (dirList ~= nil) then -- Emit distance effects
			local i = 2;
			while (i < #dirList) do
				doSendDistanceShoot(dirEmitPos,{x=dirEmitPos.x-dirList[i],y=dirEmitPos.y-dirList[i+1],z=dirEmitPos.z},dirList[1])
				i = i + 2
			end		
		end
	end
end

function onCastSpell(cid, var)
	local startPos = getCreaturePosition(cid)
	addEvent(RunPart,100,combat1_Brush_6,cid,var,dfcombat1_Brush_6,startPos)
	return true
end