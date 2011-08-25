-- UNITDEF -- ARMFDRAG --
--------------------------------------------------------------------------------

local unitName = "armfdrag"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0,
	bmcode = 0,
	brakeRate = 0,
	buildAngle = 8192,
	buildCostEnergy = 600,
	buildCostMetal = 20,
	builder = false,
	buildPic = [[ARMFDRAG.png]],
	buildTime = 930,
	category = [[ALL NOTDEFENSE NOTHOVERNOTVTOL NOTMOBILE NOTSUB NOTSUBNOTSHIP NOTVTOL NOTWEAPON]],
	corpse = [[FLOATINGTEETH]],
	description = [[Perimeter Defense]],
	energyMake = 0,
	energyStorage = 0,
	energyUse = 0,
	footprintX = 2,
	footprintZ = 2,
	idleAutoHeal = 5,
	idleTime = 1800,
	isFeature = true,
	maxDamage = 50,
	maxSlope = 32,
	maxVelocity = 0,
	maxWaterDepth = 0,
	metalStorage = 0,
	minWaterDepth = 1,
	name = [[Shark's Teeth]],
	noAutoFire = false,
	noChaseCategory = [[ALL]],
	objectName = [[ARMFDRAG]],
	seismicSignature = 0,
	side = [[ARM]],
	sightDistance = 130,
	smoothAnim = true,
	turnRate = 0,
	unitname = [[armfdrag]],
	waterline = 22,
	workerTime = 0,
	yardMap = [[wwww]],
	featureDefs = nil,
}

--------------------------------------------------------------------------------

local featureDefs = {
	FLOATINGTEETH = {
		autoreclaimable = 0,
		blocking = true,
		category = [[dragonteeth]],
		damage = 30,
		description = [[Shark's Teeth]],
		footprintX = 2,
		footprintZ = 2,
		height = 75,
		hitdensity = 100,
		metal = 16,
		nodrawundergray = true,
		object = [[armfdrag]],
		reclaimable = true,
		world = [[allworld]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
