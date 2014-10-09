

-- =============== COMBAT VARS ===============
-- Areas/Combat for 1000ms
local combat10_Brush_4 = createCombatObject()
setCombatParam(combat10_Brush_4, COMBAT_PARAM_EFFECT, CONST_ME_DRAWBLOOD)
setCombatParam(combat10_Brush_4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat10_Brush_4,createCombatArea({{0, 1, 0},
{1, 2, 1},
{0, 1, 0}}))
function onGetFormulaValues(cid, level, skill, attack, factor)
	local levelTotal, formula = level / 5, 0.0496
	local normal, elemental = -(skill * attack * formula + levelTotal), math.ceil((skill * formula + levelTotal))
	return normal*3, normal*6, -math.random(elemental/2, elemental)
end

setCombatCallback(combat10_Brush_4, CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")

-- Areas/Combat for 0ms
local combat0_Brush_6 = createCombatObject()
setCombatParam(combat0_Brush_6, COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
setCombatParam(combat0_Brush_6, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush_6,createCombatArea({{0, 1, 0},
{1, 2, 1},
{0, 1, 0}}))
function getDmg_Brush_6(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat0_Brush_6, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_6")

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
	addEvent(RunPart,1000,combat10_Brush_4,cid,var)
	RunPart(combat0_Brush_6,cid,var)
	return true
end