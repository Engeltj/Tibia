-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 0ms
local combat0_Brush = createCombatObject()
setCombatParam(combat0_Brush, COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
setCombatParam(combat0_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush,createCombatArea({{1, 1, 1},
{1, 2, 1},
{1, 1, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
	local min_dmg = (level*2.5)*-1
	local max_dmg = (level*3.5)*-1.3
	
	if (max_dmg > 135) then
		min_dmg = 85
		max_dmg = 125
	end
	
	return min_dmg,max_dmg
end
setCombatCallback(combat0_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

-- Areas/Combat for 800ms
local combat8_Brush = createCombatObject()
setCombatParam(combat8_Brush, COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
setCombatParam(combat8_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat8_Brush,createCombatArea({{0, 1, 1, 1, 0},
{1, 0, 0, 0, 1},
{1, 0, 2, 0, 1},
{1, 0, 0, 0, 1},
{0, 1, 1, 1, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	local min_dmg = (level*2.5)*-1
	local max_dmg = (level*3.5)*-1.2
	
	if (max_dmg > 135) then
		min_dmg = 85
		max_dmg = 125
	end
	
	return min_dmg,max_dmg
end
setCombatCallback(combat8_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")

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
	RunPart(combat0_Brush,cid,var)
	addEvent(RunPart,800,combat8_Brush,cid,var)
	return true
end