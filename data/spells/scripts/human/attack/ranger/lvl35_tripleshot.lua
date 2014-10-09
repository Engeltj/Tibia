-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 0ms
local combat0_Brush_5 = createCombatObject()
setCombatParam(combat0_Brush_5, COMBAT_PARAM_EFFECT, CONST_ME_BLOCKHIT)
setCombatParam(combat0_Brush_5, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_BOLT)
setCombatParam(combat0_Brush_5, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush_5,createCombatArea({{3}}))
function onGetFormulaValues(cid, level, skill, attack, factor)
	local bow = getBow(cid)
	if not bow then
		attack = 0
	end
	local bonus = 0.8
	local min_dmg = level/5 * bonus
	local max_dmg = (0.09*1*skill*attack+min_dmg) * bonus
	return -min_dmg, -max_dmg
end
setCombatCallback(combat0_Brush_5, CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")
local dfcombat0_Brush_5 = {CONST_ANI_BOLT,0,0}

-- Areas/Combat for 200ms
local combat2_Brush_5 = createCombatObject()
setCombatParam(combat2_Brush_5, COMBAT_PARAM_EFFECT, CONST_ME_BLOCKHIT)
setCombatParam(combat2_Brush_5, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_BOLT)
setCombatParam(combat2_Brush_5, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat2_Brush_5,createCombatArea({{3}}))
function onGetFormulaValues(cid, level, skill)
	return -(((skill + 25) / 3) + (level / 5)), -((skill + 25) + (level / 3)), 0
end
setCombatCallback(combat2_Brush_5, CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")
local dfcombat2_Brush_5 = {CONST_ANI_BOLT,0,0}

-- Areas/Combat for 400ms
local combat4_Brush_5 = createCombatObject()
setCombatParam(combat4_Brush_5, COMBAT_PARAM_EFFECT, CONST_ME_BLOCKHIT)
setCombatParam(combat4_Brush_5, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_BOLT)
setCombatParam(combat4_Brush_5, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat4_Brush_5,createCombatArea({{3}}))
function onGetFormulaValues(cid, level, skill)
	return -(((skill + 25) / 3) + (level / 5)), -((skill + 25) + (level / 3)), 0
end
setCombatCallback(combat4_Brush_5, CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")
local dfcombat4_Brush_5 = {CONST_ANI_BOLT,0,0}

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
	RunPart(combat0_Brush_5,cid,var,dfcombat0_Brush_5,startPos)
	addEvent(RunPart,200,combat2_Brush_5,cid,var,dfcombat2_Brush_5,startPos)
	addEvent(RunPart,400,combat4_Brush_5,cid,var,dfcombat4_Brush_5,startPos)
	return true
end