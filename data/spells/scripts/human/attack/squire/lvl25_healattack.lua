-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 0ms
--local combat0_Brush_2 = createCombatObject()
--setCombatParam(combat0_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_HOLYAREA)
--setCombatParam(combat0_Brush_2, COMBAT_PARAM_TYPE, COMBAT_HEALING)
--setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)
--setCombatArea(combat0_Brush_2,createCombatArea({{3}}))-
--function onGetFormulaValues(cid, level, maglevel)
	--return level*1.7 + 30, level*2.1 + 50
--end
--setCombatCallback(combat0_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")
local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HEALING)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_HOLYAREA)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)

function onGetFormulaValues(cid, level, maglevel)
	return level*.8 + 10+ maglevel*1.5, level*1.5 + 30 + maglevel*4
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

-- Areas/Combat for 500ms
local combat5_Brush_3 = createCombatObject()
setCombatParam(combat5_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)
setCombatParam(combat5_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat5_Brush_3,createCombatArea({{1, 1, 1},
{1, 2, 1},
{1, 1, 1}}))
function getDmg_Brush_3(cid, level, maglevel)
min = -(level * 1.3 + maglevel * 2.1) * .8
max = -(level * 1.6 + maglevel * 3.95) * 1.4
	return min, max
end
setCombatCallback(combat5_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

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
	RunPart(combat,cid,var)
	addEvent(RunPart,500,combat5_Brush_3,cid,var)
	return true
end