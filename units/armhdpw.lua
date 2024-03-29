-- UNITDEF -- ARMHDPW --
--------------------------------------------------------------------------------

local unitName = "armhdpw"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0.12,
	bmcode = 1,
	brakeRate = 0.19,
	buildCostEnergy = 20446,
	buildCostMetal = 1920,
	builder = false,
	buildTime = 14800,
	canAttack = true,
	canGuard = true,
	canMove = true,
	canPatrol = true,
	canstop = 1,
	category = [[ALL LARGE MOBILE NOTDEFENSE NOTHOVERNOTVTOL NOTSUB NOTSUBNOTSHIP NOTVTOL WEAPON]],
	corpse = [[dead]],
	defaultmissiontype = [[Standby]],
	description = [[The hunter hell.]],
	designation = [[TAEF/ARM-HDPW]],
	downloadable = 1,
	energyMake = 5.5,
	energyStorage = 0,
	energyUse = 0.8,
	explodeAs = [[SMALL_UNITEX]],
	firestandorders = 1,
	footprintX = 2,
	footprintZ = 2,
	frenchdescription = [[PeeWee tout-terrains]],
	frenchname = [[Hell DIVER]],
	germandescription = [[Verb.geländegängiger PW]],
	germanname = [[Hell DIVER]],
	italiandescription = [[Adv. All Terrain P.W.]],
	italianname = [[Hell DIVER]],
	maneuverleashlength = 640,
	maxDamage = 3750,
	maxSlope = 187,
	maxVelocity = 1.75,
	maxWaterDepth = 35,
	metalStorage = 0,
	minCloakDistance = 37,
	mobilestandorders = 1,
	movementClass = [[KBOT2]],
	name = [[Hell DIVER]],
	noAutoFire = false,
	noChaseCategory = [[SUB VTOL]],
	norestrict = 1,
	objectName = [[ARMHDPW]],
	ovradjust = 1,
	radarDistance = 0,
	selfDestructAs = [[SMALL_UNIT]],
	shootme = 1,
	side = [[ARM]],
	sightDistance = 250,
	sonarDistance = 300,
	spanishdescription = [[Adv. All Terrain P.W.]],
	spanishname = [[Hell DIVER]],
	standingfireorder = 2,
	standingmoveorder = 1,
	stealth = true,
	steeringmode = 2,
	threed = 1,
	turnRate = 1050,
	unitname = [[armhdpw]],
	unitnumber = 14017,
	upright = true,
	version = 1,
	workerTime = 0,
	zbuffer = 1,
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
			[1] = [[kbarmmov]],
		},
		select = {
			[1] = [[kbarmsel]],
		},
	},
	weaponDefs = nil,
	weapons = {
		[1] = {
			def = [[ARM_EMCC3]],
			onlyTargetCategory = [[NOTVTOL]],
		},
		[2] = {
			def = [[NOWEAPON]],
			onlyTargetCategory = [[NOTVTOL]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	['ADV-EMG3'] = {
		areaOfEffect = 12,
		beamWeapon = true,
		burst = 2,
		burstrate = 0.2,
		energypershot = 0,
		explosionart = [[explode5]],
		explosiongaf = [[fx]],
		fireStarter = 90,
		id = 219,
		lineOfSight = true,
		model = [[aemg]],
		name = [[Advanced EMG]],
		range = 660,
		reloadtime = 0.4,
		renderType = 1,
		soundHit = [[XPLOMed2]],
		soundStart = [[armkiller1]],
		soundTrigger = true,
		sprayAngle = 2048,
		tolerance = 2500,
		turret = true,
		weaponTimer = 2,
		weaponType = [[LaserCannon]],
		weaponVelocity = 500,
		damage = {
			default = 75,
			subs = 5,
		},
	},
	ARM_EMCC3 = {
		areaOfEffect = 8,
		burst = 4,
		burstrate = 0.05,
		color = 1,
		explosionart = [[explode5]],
		explosiongaf = [[fx]],
		id = 229,
		lavaexplosionart = [[lavasplashsm]],
		lavaexplosiongaf = [[fx]],
		lineOfSight = true,
		name = [[Electro-Magnetic Compression Cannon]],
		range = 715,
		reloadtime = 0.15,
		renderType = 4,
		soundHit = [[lasrhit1]],
		soundStart = [[armsml2]],
		soundTrigger = true,
		sprayAngle = 1024,
		startsmoke = 1,
		tolerance = 5000,
		turret = true,
		waterexplosionart = [[h2oboom1]],
		waterexplosiongaf = [[fx]],
		weaponTimer = 1,
		weaponType = [[Cannon]],
		weaponVelocity = 475,
		damage = {
			default = 23,
			subs = 5,
		},
	},
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
	dead = {
		blocking = true,
		category = [[arm_corpses]],
		damage = 0.6000 * unitDef.maxDamage,
		description = unitDef.name .. [[ Wreckage]],
		featureDead = [[heap]],
		featurereclamate = [[smudge01]],
		footprintX = 2,
		footprintZ = 2,
		height = 20,
		hitdensity = 100,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[armhdpw_dead]],
		reclaimable = true,
		seqnamereclamate = [[tree1reclamate]],
		world = [[All Worlds]],
	},
	heap = {
		blocking = false,
		category = [[heaps]],
		damage = 0.3600 * unitDef.maxDamage,
		description = unitDef.name .. [[ Heap]],
		featurereclamate = [[smudge01]],
		footprintX = 2,
		footprintZ = 2,
		height = 4,
		hitdensity = 100,
		metal = 0.6400 * unitDef.buildCostMetal,
		object = [[2x2a]],
		reclaimable = true,
		seqnamereclamate = [[tree1reclamate]],
		world = [[All Worlds]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
