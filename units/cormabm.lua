-- UNITDEF -- CORMABM --
--------------------------------------------------------------------------------

local unitName = "cormabm"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0.0198,
	antiweapons = 1,
	bmcode = 1,
	brakeRate = 0.0374,
	buildCostEnergy = 92321,
	buildCostMetal = 1508,
	builder = false,
	buildPic = [[CORMABM.png]],
	buildTime = 96450,
	canGuard = true,
	canMove = true,
	canPatrol = true,
	canstop = 1,
	category = [[ALL LARGE MOBILE NOTDEFENSE NOTHOVERNOTVTOL NOTSUB NOTSUBNOTSHIP NOTVTOL WEAPON]],
	corpse = [[DEAD]],
	damageModifier = 0.5,
	defaultmissiontype = [[Standby]],
	description = [[Mobile Anti-missile Defense]],
	energyMake = 200,
	energyStorage = 1000,
	energyUse = 0,
	explodeAs = [[LARGE_BUILDINGEX]],
	firestandorders = 1,
	footprintX = 3,
	footprintZ = 3,
	idleAutoHeal = 5,
	idleTime = 1800,
	leaveTracks = true,
	maneuverleashlength = 640,
	maxDamage = 780,
	maxSlope = 10,
	maxVelocity = 1.771,
	maxWaterDepth = 0,
	metalStorage = 0,
	mobilestandorders = 1,
	movementClass = [[TANK3]],
	name = [[Hedgehog]],
	noChaseCategory = [[ALL SUB]],
	objectName = [[CORMABM]],
	radarDistance = 50,
	seismicSignature = 0,
	selfDestructAs = [[LARGE_BUILDING]],
	side = [[CORE]],
	sightDistance = 450,
	smoothAnim = true,
	standingfireorder = 2,
	standingmoveorder = 1,
	steeringmode = 1,
	trackOffset = 6,
	trackStrength = 5,
	trackStretch = 1,
	trackType = [[StdTank]],
	trackWidth = 34,
	turnRate = 520.3,
	unitname = [[cormabm]],
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
			def = [[CORMABM_WEAPON]],
			onlyTargetCategory = [[NOTVTOL]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	CORMABM_WEAPON = {
		areaOfEffect = 420,
		avoidFriendly = false,
		collideFriendly = false,
		coverage = 2000,
		craterBoost = 0,
		craterMult = 0,
		energypershot = 7500,
		explosionGenerator = [[custom:FLASH4]],
		fireStarter = 100,
		flightTime = 120,
		guidance = true,
		impulseBoost = 0.123,
		impulseFactor = 0.123,
		interceptor = 1,
		lineOfSight = true,
		metalpershot = 150,
		model = [[fmdmisl]],
		name = [[Rocket]],
		noautorange = 1,
		noSelfDamage = true,
		range = 72000,
		reloadtime = 2,
		renderType = 1,
		selfprop = true,
		smokedelay = 0.1,
		smokeTrail = true,
		soundHit = [[xplomed4]],
		soundStart = [[Rockhvy1]],
		startsmoke = 1,
		stockpile = true,
		stockpiletime = 90,
		tolerance = 4000,
		tracks = true,
		turnRate = 99000,
		twoPhase = true,
		vlaunch = true,
		weaponAcceleration = 75,
		weaponTimer = 5,
		weaponType = [[StarburstLauncher]],
		weaponVelocity = 3000,
		damage = {
			default = 500,
			subs = 5,
		},
	},
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
	DEAD = {
		blocking = true,
		category = [[corpses]],
		damage = 0.6000 * unitDef.maxDamage,
		description = unitDef.name .. [[ Wreckage]],
		energy = 0,
		featureDead = [[HEAP]],
		featurereclamate = [[SMUDGE01]],
		footprintX = 3,
		footprintZ = 3,
		height = 20,
		hitdensity = 100,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[CORMABM_DEAD]],
		reclaimable = true,
		seqnamereclamate = [[TREE1RECLAMATE]],
		world = [[All Worlds]],
	},
	HEAP = {
		blocking = false,
		category = [[heaps]],
		damage = 0.3600 * unitDef.maxDamage,
		description = unitDef.name .. [[ Heap]],
		energy = 0,
		featurereclamate = [[SMUDGE01]],
		footprintX = 3,
		footprintZ = 3,
		height = 4,
		hitdensity = 100,
		metal = 0.6400 * unitDef.buildCostMetal,
		object = [[3X3D]],
		reclaimable = true,
		seqnamereclamate = [[TREE1RECLAMATE]],
		world = [[All Worlds]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
