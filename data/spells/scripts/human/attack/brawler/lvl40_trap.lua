-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 0ms
local combat0_Brush_3 = createCombatObject()
setCombatParam(combat0_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)
setCombatParam(combat0_Brush_3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat0_Brush_3, COMBAT_PARAM_CREATEITEM, 1499)
setCombatArea(combat0_Brush_3,createCombatArea({{1, 1, 1, 1, 1},
{1, 0, 0, 0, 1},
{1, 0, 2, 0, 1},
{1, 0, 0, 0, 1},
{1, 1, 1, 1, 1}}))
function getDmg_Brush_3(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat0_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")

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
	RunPart(combat0_Brush_3,cid,var)
	return true
end