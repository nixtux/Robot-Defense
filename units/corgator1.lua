-- UNITDEF -- CORGATOR1 --
--------------------------------------------------------------------------------

local unitName = "corgator1"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0.085,
	bmcode = 1,
	brakeRate = 0.095,
	buildCostEnergy = 1442,
	buildCostMetal = 218,
	builder = false,
	buildPic = [[CORGATOR.png]],
	buildTime = 1761,
	canAttack = true,
	canGuard = true,
	canMove = true,
	canPatrol = true,
	canstop = 1,
	category = [[ALL MEDIUM MOBILE NOTDEFENSE NOTHOVERNOTVTOL NOTSUB NOTSUBNOTSHIP NOTVTOL WEAPON]],
	corpse = [[CORGATOR_DEAD]],
	defaultmissiontype = [[Standby]],
	description = [[Light Tank]],
	energyMake = 0.5,
	energyStorage = 0,
	energyUse = 0.5,
	explodeAs = [[BIG_UNITEX]],
	firestandorders = 1,
	footprintX = 2,
	footprintZ = 2,
	idleAutoHeal = 5,
	idleTime = 1800,
	leaveTracks = true,
	maneuverleashlength = 640,
	maxDamage = 920,
	maxSlope = 10,
	maxVelocity = 3.5,
	maxWaterDepth = 12,
	metalStorage = 0,
	mobilestandorders = 1,
	movementClass = [[TANK2]],
	name = [[Insistent Instigator]],
	noAutoFire = false,
	noChaseCategory = [[SUB VTOL]],
	objectName = [[CORGATOR1]],
	seismicSignature = 0,
	selfDestructAs = [[BIG_UNIT]],
	side = [[CORE]],
	sightDistance = 273,
	smoothAnim = true,
	standingfireorder = 2,
	standingmoveorder = 1,
	steeringmode = 1,
	trackOffset = 5,
	trackStrength = 5,
	trackStretch = 1,
	trackType = [[StdTank]],
	trackWidth = 21,
	turnRate = 640,
	unitname = [[corgator1]],
	workerTime = 0,
	featureDefs = nil,
	sounds = {
		canceldestruct = [[cancel2]],
		underattack = [[warning1]],
		cant = {
			[1] = [[cantdo4]],
		},
		count = {
			[1] = [[count6]],
			[2] = [[count5]],
			[3] = [[count4]],
			[4] = [[count3]],
			[5] = [[count2]],
			[6] = [[count1]],
		},
		ok = {
			[1] = [[tcormove]],
		},
		select = {
			[1] = [[tcorsel]],
		},
	},
	weaponDefs = nil,
	weapons = {
		[1] = {
			def = [[GATOR_LASERX1]],
			onlyTargetCategory = [[NOTVTOL]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	GATOR_LASERX1 = {
		areaOfEffect = 8,
		beamlaser = 1,
		beamTime = 0.15,
		coreThickness = 0.175,
		craterBoost = 0,
		craterMult = 0,
		energypershot = 5,
		explosionGenerator = [[custom:FLASH1red]],
		fireStarter = 50,
		impulseBoost = 0.123,
		impulseFactor = 0.123,
		laserFlareSize = 6,
		lineOfSight = true,
		name = [[Laser]],
		noSelfDamage = true,
		range = 270,
		reloadtime = 0.62,
		renderType = 0,
		rgbColor = [[1 0 0]],
		soundHit = [[lasrhit2]],
		soundStart = [[lasrlit3]],
		soundTrigger = true,
		targetMoveError = 0.05,
		thickness = 2.7,
		tolerance = 15000,
		turret = true,
		weaponType = [[BeamLaser]],
		weaponVelocity = 1500,
		damage = {
			default = 82,
			raider_resistant = 41,
			subs = 5,
		},
	},
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
	CORGATOR_DEAD = {
		blocking = true,
		category = [[corpses]],
		damage = 0.6000 * unitDef.maxDamage,
		description = unitDef.name .. [[ Wreckage]],
		energy = 0,
		featureDead = [[CORGATOR_HEAP]],
		featurereclamate = [[SMUDGE01]],
		footprintX = 2,
		footprintZ = 2,
		height = 20,
		hitdensity = 100,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[CORGATOR_DEAD]],
		reclaimable = true,
		seqnamereclamate = [[TREE1RECLAMATE]],
		world = [[All Worlds]],
	},
	CORGATOR_HEAP = {
		blocking = false,
		category = [[heaps]],
		damage = 0.3600 * unitDef.maxDamage,
		description = [[Instigator Heap]],
		energy = 0,
		featurereclamate = [[SMUDGE01]],
		footprintX = 2,
		footprintZ = 2,
		height = 4,
		hitdensity = 100,
		metal = 0.6400 * unitDef.buildCostMetal,
		object = [[2X2F]],
		reclaimable = true,
		seqnamereclamate = [[TREE1RECLAMATE]],
		world = [[All Worlds]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
