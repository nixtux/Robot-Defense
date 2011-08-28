-- UNITDEF -- CHICKENF1 --
--------------------------------------------------------------------------------

local unitName = "chickenf1"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0.8,
	airHoverFactor = 0,
	attackrunlength = 32,
	bmcode = [[1]],
	brakeRate = 0.4,
	buildCostEnergy = 4550,
	buildCostMetal = 212,
	builder = false,
	buildTime = 6250,
	canAttack = true,
	canFly = true,
	canGuard = true,
	canLand = true,
	canMove = true,
	canPatrol = true,
	canstop = [[1]],
	canSubmerge = true,
	category = [[VTOL MOBILE WEAPON NOTSUB NOTSHIP ALL]],
	collide = false,
	collisionVolumeOffsets = [[0 8 -2]],
	collisionVolumeScales = [[70 14 48]],
	collisionVolumeType = [[box]],
	corpse = [[DEAD]],
	cruiseAlt = 240,
	defaultmissiontype = [[Standby]],
	description = [[Flying Chicken Bomber]],
	explodeAs = [[TALON_DEATH]],
	footprintX = 3,
	footprintZ = 3,
	hidedamage = 1,
	iconType = [[chickenf]],
	idleAutoHeal = 5,
	idleTime = 0,
	maneuverleashlength = [[20000]],
	mass = 227.5,
	maxDamage = 1350,
	maxVelocity = 6.2,
	moverate1 = [[32]],
	name = [[Talon]],
	noAutoFire = false,
	noChaseCategory = [[VTOL]],
	objectName = [[chickenf.s3o]],
	seismicSignature = 0,
	selfDestructAs = [[TALON_DEATH]],
	side = [[THUNDERBIRDS]],
	sightDistance = 1000,
	smoothAnim = true,
	steeringmode = [[2]],
	TEDClass = [[VTOL]],
	turninplace = 0,
	turnRate = 900,
	unitname = [[chickenf1]],
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
			def = [[WEAPON]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	WEAPON = {
		accuracy = 1000,
		areaOfEffect = 128,
		avoidFeature = false,
		avoidFriendly = false,
		burst = 8,
		burstrate = 0.24,
		collideFriendly = false,
		craterBoost = 0,
		craterMult = 0,
		dropped = true,
		edgeEffectiveness = 0.15,
		explosionGenerator = [[custom:gundam_MISSILE_EXPLOSION]],
		impulseBoost = 1,
		impulseFactor = 1,
		interceptedByShieldType = 0,
		manualBombSettings = true,
		model = [[chickeneggyellow.s3o]],
		name = [[GooBombs]],
		noSelfDamage = true,
		range = 800,
		reloadtime = 7,
		renderType = 6,
		soundhit = [[junohit2edit]],
		sprayAngle = 2000,
		weaponType = [[AircraftBomb]],
		damage = {
			ANTIBOMBER = 155,
			CHICKEN = 100,
			default = 310,
			TINYCHICKEN = 100,
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
