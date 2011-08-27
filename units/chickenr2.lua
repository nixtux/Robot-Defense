-- UNITDEF -- CHICKENR2 --
--------------------------------------------------------------------------------

local unitName = "chickenr2"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0.9,
	activateWhenBuilt = true,
	bmcode = [[1]],
	brakeRate = 0.7,
	buildCostEnergy = 15000,
	buildCostMetal = 250,
	builder = false,
	buildTime = 3000,
	canGuard = true,
	canMove = true,
	canPatrol = true,
	canstop = [[1]],
	category = [[MOBILE WEAPON NOTVTOL NOTSUB NOTSHIP ALL]],
	collisionVolumeOffsets = [[0 -2 0]],
	collisionVolumeScales = [[25 31 44]],
	collisionVolumeType = [[box]],
	defaultmissiontype = [[Standby]],
	description = [[Chicken Assault]],
	explodeAs = [[WEAVER_DEATH]],
	footprintX = 3,
	footprintZ = 3,
	iconType = [[chicken]],
	leaveTracks = true,
	maneuverleashlength = [[640]],
	mass = 600,
	maxDamage = 4500,
	maxVelocity = 3.6,
	movementClass = [[CHICKENHKBOT3]],
	name = [[Enraged Lobber]],
	noAutoFire = false,
	noChaseCategory = [[VTOL]],
	objectName = [[chickenr.s3o]],
	seismicSignature = 4,
	selfDestructAs = [[WEAVER_DEATH]],
	side = [[THUNDERBIRDS]],
	sightDistance = 390,
	smoothAnim = true,
	steeringmode = [[2]],
	TEDClass = [[KBOT]],
	trackOffset = 0,
	trackStrength = 8,
	trackStretch = 1,
	trackType = [[ChickenTrack]],
	trackWidth = 50,
	turninplace = 0,
	turnRate = 900,
	unitname = [[chickenr2]],
	upright = false,
	workerTime = 0,
	featureDefs = nil,
	sfxtypes = {
		explosiongenerators = {
			[1] = [[custom:blood_spray]],
			[2] = [[custom:blood_explode]],
			[3] = [[custom:dirt]],
		},
	},
	weaponDefs = nil,
	weapons = {
		[1] = {
			badTargetCategory = [[VTOL]],
			def = [[CHASEWEAPON]],
			mainDir = [[0 0 1]],
			onlyTargetCategory = [[NOTVTOL]],
		},
		[2] = {
			badTargetCategory = [[VTOL]],
			def = [[FLAMER]],
			mainDir = [[0 0 1]],
			maxAngleDif = 120,
			onlyTargetCategory = [[NOTVTOL]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	CHASEWEAPON = {
		craterBoost = 0,
		craterMult = 0,
		endsmoke = [[0]],
		explosionGenerator = [[custom:NONE]],
		impulseBoost = 0,
		impulseFactor = 0,
		lineOfSight = true,
		name = [[Claws]],
		noSelfDamage = true,
		proximityPriority = -4,
		range = 100,
		reloadtime = 30,
		size = 0.001,
		startsmoke = [[0]],
		targetborder = 1,
		toAirWeapon = 0,
		tolerance = 5000,
		turret = [[true]],
		weaponType = [[Cannon]],
		weaponVelocity = 500,
		damage = {
			default = 0.001,
		},
	},
	FLAMER = {
		areaofeffect = 64,
		avoidFeature = 0,
		avoidFriendly = 0,
		burst = 12,
		burstrate = 0.01,
		ColorMap = [[0.2 0.5 0.9 0.7 0.2 0.5 0.9 0]],
		craterboost = 0,
		cratermult = 0,
		endsmoke = 0,
		firestarter = 100,
		flamegfxtime = 1.9,
		groundbounce = 1,
		impulseboost = 0,
		impulsefactor = 0,
		intensity = 0.9,
		lineofsight = true,
		name = [[FlameThrower]],
		noselfdamage = true,
		proximityPriority = 4,
		randomdecay = 0.6,
		range = 310,
		reloadtime = 0.7,
		rendertype = 5,
		sizegrowth = 1.2,
		smokedelay = 1,
		soundstart = [[Flamhvy1]],
		soundtrigger = 0,
		sprayangle = 9600,
		startsmoke = 0,
		targetmoveerror = 0.001,
		toAirWeapon = 0,
		tolerance = 2500,
		turret = true,
		weapontimer = 1,
		weaponvelocity = 300,
		damage = {
			CHICKEN = 6,
			default = 40,
			TINYCHICKEN = 3,
		},
	},
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
	DEAD = {
	},
	HEAP = {
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
