-- UNITDEF -- CHICKEND1 --
--------------------------------------------------------------------------------

local unitName = "chickend1"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0,
	activateWhenBuilt = true,
	bmcode = [[0]],
	brakeRate = 0,
	buildCostEnergy = 3000,
	buildCostMetal = 120,
	builder = false,
	buildTime = 1800,
	canAttack = true,
	canstop = [[1]],
	category = [[WEAPON NOTVTOL NOTSUB NOTSHIP ALL]],
	collisionVolumeOffsets = [[0 15 0]],
	collisionVolumeScales = [[14 50 14]],
	collisionVolumeType = [[box]],
	corpse = [[DEAD]],
	defaultmissiontype = [[GUARD_NOMOVE]],
	description = [[Defense]],
	energyMake = 20000,
	explodeAs = [[custom:blood_explode]],
	extractsMetal = 0.001,
	footprintX = 3,
	footprintZ = 3,
	iconType = [[defense]],
	idleAutoHeal = 15,
	idleTime = 1800,
	levelGround = false,
	mass = 90,
	maxDamage = 1125,
	maxSlope = 255,
	maxVelocity = 0,
	maxWaterDepth = 0,
	metalStorage = 10000,
	name = [[Chicken Tube]],
	noAutoFire = false,
	noChaseCategory = [[MOBILE]],
	objectName = [[tube.s3o]],
	seismicSignature = 0,
	selfDestructAs = [[custom:blood_explode]],
	side = [[THUNDERBIRDS]],
	sightDistance = 370,
	smoothAnim = true,
	TEDClass = [[METAL]],
	turnRate = 0,
	unitname = [[chickend1]],
	upright = false,
	waterline = 1,
	workerTime = 0,
	yardMap = [[ooooooooo]],
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
			def = [[WEAPON]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	WEAPON = {
		areaOfEffect = 32,
		avoidFriendly = false,
		collideFriendly = false,
		craterBoost = 0,
		craterMult = 0,
		dance = 20,
		explosionGenerator = [[custom:NONE]],
		fireStarter = 0,
		flightTime = 5,
		groundbounce = 1,
		guidance = true,
		heightmod = 0.5,
		impulseBoost = 0,
		impulseFactor = 0.4,
		interceptedByShieldType = 2,
		lineOfSight = true,
		metalpershot = 0,
		model = [[AgamAutoBurst]],
		name = [[Missiles]],
		noSelfDamage = true,
		range = 420,
		reloadtime = 2.2,
		renderType = 1,
		selfprop = true,
		smokedelay = [[0.1]],
		smokeTrail = true,
		startsmoke = [[1]],
		startVelocity = 100,
		texture1 = [[]],
		texture2 = [[sporetrail]],
		tolerance = 10000,
		tracks = true,
		trajectoryHeight = 2,
		turnRate = 24000,
		turret = true,
		waterweapon = true,
		weaponAcceleration = 100,
		weaponType = [[MissileLauncher]],
		weaponVelocity = 500,
		wobble = 32000,
		damage = {
			default = 320,
			L2BOMBERS = 420,
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
