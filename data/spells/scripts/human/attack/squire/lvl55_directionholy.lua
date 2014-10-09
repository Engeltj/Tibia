-- SpellCreator generated.

-- =============== COMBAT VARS ===============
-- Areas/Combat for 0ms
local combat0_Brush_2 = createCombatObject()
setCombatParam(combat0_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_HOLYDAMAGE)
setCombatParam(combat0_Brush_2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush_2,createCombatArea({{0, 1, 1, 1, 0},
{0, 1, 0, 1, 0},
{0, 1, 1, 1, 0},
{0, 0, 1, 0, 0},
{0, 1, 3, 1, 0},
{1, 1, 0, 1, 1},
{0, 1, 1, 1, 0},
{0, 0, 1, 0, 0}}))
function getDmg_Brush_2(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat0_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")local combat0_Brush = createCombatObject()
setCombatParam(combat0_Brush, COMBAT_PARAM_EFFECT, CONST_ME_HOLYAREA)
setCombatParam(combat0_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush,createCombatArea({{1},
{0},
{0},
{2}}))
function getDmg_Brush(cid, level, maglevel)
	return (10)*-1,(20)*-1 
end
setCombatCallback(combat0_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")

-- =============== CORE FUNCTIONS ===============
local function RunPart(c,cid,var,dirList,dirEmitPos,startDir) -- Part
	if (isCreature(cid)) then
		doCombat(cid, c, var)
		if (dirList ~= nil) then -- Emit distance effects
			local i = 2;
			while (i < #dirList) do
				if (startDir == 0) then -- N
					doSendDistanceShoot(dirEmitPos,{x=dirEmitPos.x-dirList[i],y=dirEmitPos.y-dirList[i+1],z=dirEmitPos.z},dirList[1])
				elseif (startDir == 2) then -- S
					doSendDistanceShoot(dirEmitPos,{x=dirEmitPos.x+dirList[i],y=dirEmitPos.y+dirList[i+1],z=dirEmitPos.z},dirList[1])
				elseif (startDir == 1) then -- E
					doSendDistanceShoot(dirEmitPos,{x=dirEmitPos.x+dirList[i+1],y=dirEmitPos.y+dirList[i],z=dirEmitPos.z},dirList[1])
				else -- W / Something weird happened
					doSendDistanceShoot(dirEmitPos,{x=dirEmitPos.x-dirList[i+1],y=dirEmitPos.y-dirList[i],z=dirEmitPos.z},dirList[1])
				end
				i = i + 2
			end		
		end
	end
end

function onCastSpell(cid, var)
	local startPos = getCreaturePosition(cid)
	local startDir = getCreatureLookDirection(cid)
	RunPart(combat0_Brush_2,cid,var)
	RunPart(combat0_Brush,cid,var)
	return true
end