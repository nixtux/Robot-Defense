-- UNITDEF -- CORPT --
--------------------------------------------------------------------------------

local unitName = "corpt"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0.096,
	bmcode = 1,
	brakeRate = 0.025,
	buildCostEnergy = 917,
	buildCostMetal = 95,
	builder = false,
	buildPic = [[CORPT.png]],
	buildTime = 1877,
	canAttack = true,
	canGuard = true,
	canMove = true,
	canPatrol = true,
	canstop = 1,
	category = [[ALL MOBILE NOTDEFENSE NOTHOVERNOTVTOL NOTSUB NOTVTOL SMALL]],
	corpse = [[DEAD]],
	defaultmissiontype = [[Standby]],
	description = [[Scout Boat/Light Anti-Air]],
	energyMake = 0.23,
	energyStorage = 0,
	energyUse = 0.23,
	explodeAs = [[SMALL_UNITEX]],
	firestandorders = 1,
	floater = true,
	footprintX = 4,
	footprintZ = 4,
	iconType = [[sea]],
	idleAutoHeal = 5,
	idleTime = 1800,
	maneuverleashlength = 1280,
	maxDamage = 228,
	maxVelocity = 5.06,
	metalStorage = 0,
	minWaterDepth = 6,
	mobilestandorders = 1,
	movementClass = [[BOAT4]],
	name = [[Searcher]],
	noAutoFire = false,
	noChaseCategory = [[VTOL]],
	objectName = [[CORPT]],
	seismicSignature = 0,
	selfDestructAs = [[SMALL_UNIT]],
	side = [[CORE]],
	sightDistance = 585,
	smoothAnim = true,
	standingfireorder = 2,
	standingmoveorder = 1,
	steeringmode = 1,
	turnRate = 622,
	unitname = [[corpt]],
	waterline = 1,
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
			[1] = [[shcormov]],
		},
		select = {
			[1] = [[shcorsel]],
		},
	},
	weaponDefs = nil,
	weapons = {
		[1] = {
			def = [[ARMPT_LASER]],
			onlyTargetCategory = [[NOTVTOL]],
		},
		[3] = {
			def = [[ARMKBOT_MISSILE]],
			onlyTargetCategory = [[VTOL]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	ARMKBOT_MISSILE = {
		areaOfEffect = 48,
		canattackground = false,
		craterBoost = 0,
		craterMult = 0,
		explosionGenerator = [[custom:FLASH2]],
		fireStarter = 70,
		flighttimer = 2,
		guidance = true,
		impulseBoost = 0.123,
		impulseFactor = 0.123,
		lineOfSight = true,
		metalpershot = 0,
		model = [[missile]],
		name = [[Missiles]],
		noSelfDamage = true,
		range = 760,
		reloadtime = 2,
		renderType = 1,
		selfprop = true,
		smokedelay = 0.1,
		smokeTrail = true,
		soundHit = [[xplosml2]],
		soundStart = [[rocklit1]],
		startsmoke = 1,
		startVelocity = 650,
		texture2 = [[armsmoketrail]],
		toAirWeapon = true,
		tolerance = 9000,
		tracks = true,
		turnRate = 63000,
		turret = true,
		weaponAcceleration = 141,
		weaponTimer = 5,
		weaponType = [[MissileLauncher]],
		weaponVelocity = 850,
		damage = {
			bombers = 105,
			default = 5,
			fighters = 105,
			flak_resistant = 105,
			subs = 5,
			unclassed_air = 105,
		},
	},
	ARMPT_LASER = {
		areaOfEffect = 8,
		beamlaser = 1,
		beamTime = 0.1,
		burstrate = 0.2,
		coreThickness = 0.1,
		craterBoost = 0,
		craterMult = 0,
		duration = 0.02,
		energypershot = 5,
		explosionGenerator = [[custom:SMALL_YELLOW_BURN]],
		fireStarter = 50,
		impactonly = 1,
		impulseBoost = 0.123,
		impulseFactor = 0.123,
		laserFlareSize = 5,
		lineOfSight = true,
		name = [[Laser]],
		noSelfDamage = true,
		range = 220,
		reloadtime = 0.9,
		renderType = 0,
		rgbColor = [[1 1 0]],
		soundHit = [[lasrhit2]],
		soundStart = [[lasrfir1]],
		soundTrigger = true,
		targetMoveError = 0.2,
		thickness = 1,
		tolerance = 10000,
		turret = true,
		weaponType = [[BeamLaser]],
		weaponVelocity = 750,
		damage = {
			default = 55,
			subs = 5,
		},
	},
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
	DEAD = {
		blocking = false,
		category = [[corpses]],
		damage = 0.6000 * unitDef.maxDamage,
		description = unitDef.name .. [[ Wreckage]],
		energy = 0,
		featureDead = [[HEAP]],
		footprintX = 3,
		footprintZ = 3,
		height = 4,
		hitdensity = 100,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[CORPT_DEAD]],
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
		footprintX = 2,
		footprintZ = 2,
		height = 4,
		hitdensity = 100,
		metal = 0.6400 * unitDef.buildCostMetal,
		object = [[3X3A]],
		reclaimable = true,
		seqnamereclamate = [[TREE1RECLAMATE]],
		world = [[All Worlds]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
