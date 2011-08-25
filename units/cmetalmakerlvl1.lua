-- UNITDEF -- CMETALMAKERLVL1 --
--------------------------------------------------------------------------------

local unitName = "cmetalmakerlvl1"

--------------------------------------------------------------------------------

local unitDef = {
	activateWhenBuilt = true,
	buildCostEnergy = 5988,
	buildCostMetal = 188,
	builder = false,
	buildTime = 4800,
	category = [[ALL NOTDEFENSE NOTHOVERNOTVTOL NOTMOBILE NOTSUB NOTSUBNOTSHIP NOTVTOL NOTWEAPON]],
	description = [[Converts upto 256 Energy to Metal]],
	designation = [[MM-15]],
	energyStorage = 0,
	explodeAs = [[ARMESTOR_BUILDING]],
	floater = true,
	footprintX = 4,
	footprintZ = 3,
	maxDamage = 324,
	maxSlope = 10,
	maxWaterDepth = 255,
	metalStorage = 0,
	name = [[T1.5 Metal Maker]],
	noChaseCategory = [[ALL]],
	objectName = [[CMetalMakerLvl1]],
	radarDistance = 0,
	script = [[cormakr.cob]],
	selfDestructAs = [[ARMESTOR_BUILDING]],
	side = [[CORE]],
	sightDistance = 210,
	unitname = [[cmetalmakerlvl1]],
	workerTime = 0,
	yardMap = [[OOOOOOOOOOOO]],
	sounds = {
		activate = [[metlon2]],
		canceldestruct = [[cancel2]],
		deactivate = [[metloff2]],
		underattack = [[warning1]],
		working = [[metlrun2]],
		count = {
			[1] = [[count6]],
			[2] = [[count5]],
			[3] = [[count4]],
			[4] = [[count3]],
			[5] = [[count2]],
			[6] = [[count1]],
		},
		select = {
			[1] = [[metlon2]],
		},
	},
}
--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
