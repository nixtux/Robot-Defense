-- UNITDEF -- NEBRASKA --
--------------------------------------------------------------------------------

local unitName = "nebraska"

--------------------------------------------------------------------------------

local unitDef = {
	bmcode = 0,
	buildAngle = 8192,
	buildCostEnergy = 199413,
	buildCostMetal = 18789,
	builder = false,
	buildTime = 254864,
	canAttack = true,
	canstop = 1,
	category = [[ALL NOTHOVERNOTVTOL NOTMOBILE NOTSUB NOTSUBNOTSHIP NOTVTOL WEAPON]],
	copyright = [[Copyright 1997 Humongous Entertainment. All rights reserved.]],
	corpse = [[dead]],
	defaultmissiontype = [[GUARD_NOMOVE]],
	description = [[Ion Cannon Anti T3/T4]],
	designation = [[NEBRASKA-HLT]],
	energyStorage = 0,
	energyUse = 0,
	explodeAs = [[MEDIUM_BUILDINGEX]],
	firestandorders = 1,
	footprintX = 6,
	footprintZ = 6,
	frenchdescription = [[Canon � ion]],
	frenchname = [[NEBRASKA]],
	germandescription = [[Ionenkanone]],
	germanname = [[NEBRASKA]],
	maxDamage = 65000,
	maxSlope = 10,
	maxWaterDepth = 0,
	metalStorage = 0,
	name = [[NEBRASKA]],
	noAutoFire = false,
	noChaseCategory = [[ALL]],
	objectName = [[NEBRASKA]],
	ovradjust = 1,
	radarDistance = 0,
	selfDestructAs = [[MEDIUM_BUILDING]],
	shootme = 1,
	side = [[CORE]],
	sightDistance = 2000,
	standingfireorder = 2,
	threed = 1,
	unitname = [[nebraska]],
	unitnumber = 567167,
	version = 3,
	workerTime = 0,
	yardMap = [[oooooo oooooo oooooo oooooo oooooo oooooo]],
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
			[1] = [[servlrg3]],
		},
		select = {
			[1] = [[servlrg3]],
		},
	},
	weaponDefs = nil,
	weapons = {
		[1] = {
			badTargetCategory = [[LARGE MEDIUM SMALL TINY]],
			def = [[NEBRASKA_WEAPON]],
			onlyTargetCategory = [[NOTVTOL]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	NEBRASKA_WEAPON = {
		areaOfEffect = 30,
		beamWeapon = true,
		collideFriendly = false,
		craterBoost = 0,
		craterMult = 0,
		duration = 0.0025,
		energypershot = 4000,
		explosionart = [[explode5]],
		explosiongaf = [[fx]],
		fireStarter = 90,
		id = 254,
		impactonly = 1,
		impulseBoost = 0,
		impulseFactor = 0,
		intensity = 0.75,
		lavaexplosionart = [[lavasplashsm]],
		lavaexplosiongaf = [[fx]],
		lineOfSight = true,
		name = [[Annihilator Weapon Nebraska]],
		noradar = 1,
		noSelfDamage = true,
		range = 1850,
		reloadtime = 5,
		renderType = 0,
		rgbColor = [[1 1 0]],
		soundHit = [[xplolrg1]],
		soundStart = [[Energy]],
		thickness = 0.5,
		turret = true,
		waterexplosionart = [[h2oboom1]],
		waterexplosiongaf = [[fx]],
		weaponType = [[LaserCannon]],
		weaponVelocity = 4000,
		damage = {
			commanders = 3500,
			default = 8750,
			experimental_land = 35000,
			experimental_ships = 35000,
			subs = 5,
		},
	},
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
	dead = {
		blocking = true,
		category = [[core_corpses]],
		damage = 0.6000 * unitDef.maxDamage,
		description = [[Nebraska Wreckage]],
		featureDead = [[heap]],
		featurereclamate = [[smudge01]],
		footprintX = 6,
		footprintZ = 6,
		height = 20,
		hitdensity = 100,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[NEBRASKA_dead]],
		reclaimable = true,
		seqnamereclamate = [[tree1reclamate]],
		world = [[All Worlds]],
	},
	heap = {
		blocking = false,
		category = [[heaps]],
		damage = 0.3600 * unitDef.maxDamage,
		description = [[Wreckage]],
		featurereclamate = [[smudge01]],
		footprintX = 4,
		footprintZ = 4,
		height = 4,
		hitdensity = 100,
		metal = 0.6400 * unitDef.buildCostMetal,
		object = [[4x4d]],
		reclaimable = true,
		seqnamereclamate = [[tree1reclamate]],
		world = [[All Worlds]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
