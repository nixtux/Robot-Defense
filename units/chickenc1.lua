-- UNITDEF -- CHICKENC1 --
--------------------------------------------------------------------------------

local unitName = "chickenc1"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 1.25,
	bmcode = [[1]],
	brakeRate = 2,
	buildCostEnergy = 5280,
	buildCostMetal = 170,
	builder = false,
	buildTime = 6280,
	canAttack = true,
	canGuard = true,
	canMove = true,
	canPatrol = true,
	canstop = [[1]],
	category = [[MOBILE WEAPON NOTVTOL NOTSUB NOTSHIP ALL]],
	collisionVolumeOffsets = [[0 11 3]],
	collisionVolumeScales = [[25 38 64]],
	collisionVolumeType = [[box]],
	corpse = [[DEAD]],
	defaultmissiontype = [[Standby]],
	description = [[All-Terrain Assault]],
	explodeAs = [[BIGBUG_DEATH]],
	footprintX = 3,
	footprintZ = 3,
	iconType = [[chickenr]],
	leaveTracks = true,
	maneuverleashlength = [[640]],
	mass = 700,
	maxDamage = 4250,
	maxreversevelocity = 2,
	maxSlope = 18,
	maxVelocity = 2.5,
	maxWaterDepth = 15,
	movementClass = [[TKBOT3]],
	name = [[Basilisk]],
	noAutoFire = false,
	noChaseCategory = [[VTOL]],
	objectName = [[chickenc.s3o]],
	seismicSignature = 3,
	selfDestructAs = [[BIGBUG_DEATH]],
	side = [[THUNDERBIRDS]],
	sightDistance = 512,
	smoothAnim = true,
	sonarDistance = 450,
	steeringmode = [[2]],
	TEDClass = [[KBOT]],
	trackOffset = 0.5,
	trackStrength = 9,
	trackStretch = 1,
	trackType = [[ChickenTrackPointy]],
	trackWidth = 70,
	turninplace = 0,
	turnRate = 400,
	unitname = [[chickenc1]],
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
			def = [[WEAPON]],
			mainDir = [[0 0 1]],
			maxAngleDif = 110,
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	WEAPON = {
		accuracy = 256,
		areaOfEffect = 96,
		avoidFeature = 0,
		burst = 3,
		burstrate = 0.01,
		camerashake = 0,
		craterBoost = 0,
		craterMult = 0,
		edgeeffectiveness = 0,
		endsmoke = [[0]],
		explosionGenerator = [[custom:blood_explode_blue]],
		impulseBoost = 0.22,
		impulseFactor = 0.22,
		intensity = 0.7,
		interceptedByShieldType = 1,
		lineOfSight = true,
		name = [[Blob]],
		noSelfDamage = true,
		range = 300,
		reloadtime = 3.6,
		renderType = 4,
		rgbColor = [[0.0 0.6 0.6]],
		size = 8,
		sizeDecay = -0.3,
		soundhit = [[junohit2edit]],
		sprayAngle = 512,
		startsmoke = [[0]],
		targetmoveerror = 0.4,
		tolerance = 5000,
		turret = true,
		weaponTimer = 0.2,
		weaponVelocity = 500,
		damage = {
			AMPHIBIOUS = 335,
			ANNIDDM = 335,
			ANTIBOMBER = 335,
			ANTIFIGHTER = 335,
			ANTIRAIDER = 335,
			ATL = 335,
			BLACKHYDRA = 335,
			CHICKEN = 105,
			COMMANDERS = 335,
			CRAWLINGBOMBS = 335,
			default = 1250,
			DL = 335,
			ELSE = 335,
			FLAKBOATS = 335,
			FLAKS = 335,
			FLAMETHROWERS = 335,
			GUNSHIPS = 235,
			HEAVYUNITS = 335,
			HGUNSHIPS = 235,
			KROGOTH = 335,
			L1BOMBERS = 235,
			L1FIGHTERS = 235,
			L1SUBS = 335,
			L2BOMBERS = 235,
			L2FIGHTERS = 235,
			L2SUBS = 335,
			L3SUBS = 335,
			MECHS = 335,
			MINES = 335,
			NANOS = 335,
			ORCONE = 335,
			OTHERBOATS = 335,
			PLASMAGUNS = 335,
			RADAR = 335,
			SEADRAGON = 335,
			TINYCHICKEN = 105,
			TL = 335,
			VTOL = 235,
			VTRANS = 235,
			VULCBUZZ = 335,
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
