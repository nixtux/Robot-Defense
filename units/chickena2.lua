-- UNITDEF -- CHICKENA2 --
--------------------------------------------------------------------------------

local unitName = "chickena2"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0.36,
	airSightDistance = 1800,
	bmcode = [[1]],
	brakeRate = 0.4,
	buildCostEnergy = 3520,
	buildCostMetal = 302,
	builder = false,
	buildTime = 9520,
	canAttack = true,
	canGuard = true,
	canMove = true,
	canPatrol = true,
	canstop = [[1]],
	category = [[ALL LARGE MOBILE NOTDEFENSE NOTHOVERNOTVTOL NOTSUB NOTSUBNOTSHIP NOTVTOL]],
	collisionVolumeOffsets = [[0 10 2]],
	collisionVolumeScales = [[37 55 90]],
	collisionVolumeType = [[box]],
	corpse = [[DEAD]],
	defaultmissiontype = [[Standby]],
	description = [[Advanced Assault]],
	explodeAs = [[BIGBUG_DEATH]],
	footprintX = 3,
	footprintZ = 3,
	iconType = [[chickena]],
	leaveTracks = true,
	maneuverleashlength = [[640]],
	mass = 3000,
	maxDamage = 31000,
	maxSlope = 18,
	maxVelocity = 1,
	maxWaterDepth = 15,
	movementClass = [[CHICKENHKBOT4]],
	name = [[Alpha Cockatrice]],
	noAutoFire = false,
	noChaseCategory = [[VTOL]],
	objectName = [[chickena2.s3o]],
	onlytargetcategory2 = [[VTOL]],
	seismicSignature = 0,
	selfDestructAs = [[BIGBUG_DEATH]],
	side = [[THUNDERBIRDS]],
	sightDistance = 800,
	smoothAnim = true,
	steeringmode = [[2]],
	TEDClass = [[KBOT]],
	trackOffset = 7,
	trackStrength = 9,
	trackStretch = 1,
	trackType = [[ChickenTrack]],
	trackWidth = 38,
	turninplace = 0,
	turnRate = 468,
	unitname = [[chickena2]],
	upright = false,
	workerTime = 0,
	featureDefs = nil,
	sfxtypes = {
		explosiongenerators = {
			[1] = [[custom:blood_spray]],
			[2] = [[custom:blood_explode]],
			[3] = [[custom:dirt]],
			[4] = [[custom:blob_fire]],
		},
	},
	weaponDefs = nil,
	weapons = {
		[1] = {
			badTargetCategory = [[VTOL]],
			def = [[WEAPON]],
			mainDir = [[0 0 1]],
			maxAngleDif = 125,
			onlyTargetCategory = [[NOTVTOL]],
		},
		[2] = {
			badTargetCategory = [[NOTVTOL]],
			def = [[AAWEAPON]],
			onlyTargetCategory = [[VTOL]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	AAWEAPON = {
		areaOfEffect = 96,
		avoidFriendly = false,
		collideFriendly = false,
		craterBoost = 0,
		craterMult = 0,
		dance = 20,
		edgeeffectiveness = 0.33,
		explosionGenerator = [[custom:blood_explode_blue]],
		fireStarter = 0,
		flightTime = 5,
		guidance = true,
		heightmod = 0.5,
		impulseBoost = 0,
		impulseFactor = 0.4,
		interceptedByShieldType = 2,
		lineOfSight = true,
		metalpershot = 0,
		model = [[AgamAutoBurst]],
		name = [[BlobMissile]],
		noSelfDamage = true,
		range = 900,
		reloadtime = 7,
		renderType = 1,
		selfprop = true,
		smokedelay = [[0.1]],
		smokeTrail = true,
		soundhit = [[junohit2edit]],
		startsmoke = [[1]],
		startVelocity = 200,
		texture1 = [[]],
		texture2 = [[sporetrail]],
		toAirWeapon = 1,
		tolerance = 10000,
		tracks = true,
		trajectoryHeight = 2,
		turnRate = 24000,
		turret = true,
		weaponAcceleration = 75,
		weaponType = [[MissileLauncher]],
		weaponVelocity = 700,
		wobble = 32000,
		damage = {
			default = 800,
		},
	},
	WEAPON = {
		areaOfEffect = 42,
		avoidFeature = 0,
		avoidFriendly = 0,
		craterBoost = 0,
		craterMult = 0,
		endsmoke = [[0]],
		explosionGenerator = [[custom:NONE]],
		impulseBoost = 1,
		impulseFactor = 2.2,
		interceptedByShieldType = 0,
		name = [[Claws]],
		noSelfDamage = true,
		range = 165,
		reloadtime = 0.4,
		size = 0,
		soundStart = [[smallchickenattack]],
		startsmoke = [[0]],
		targetborder = 1,
		tolerance = 5000,
		turret = true,
		waterWeapon = true,
		weaponType = [[Cannon]],
		weaponVelocity = 700,
		damage = {
			CHICKEN = 0.001,
			default = 130,
			TINYCHICKEN = 0.001,
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
