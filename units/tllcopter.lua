-- UNITDEF -- TLLCOPTER --
--------------------------------------------------------------------------------

local unitName = "tllcopter"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0.16,
	bankscale = 1,
	bmcode = 1,
	brakeRate = 4,
	buildCostEnergy = 2492,
	buildCostMetal = 640,
	builder = false,
	buildTime = 15211,
	canAttack = true,
	canFly = true,
	canGuard = true,
	canMove = true,
	canPatrol = true,
	canstop = 1,
	category = [[ALL MEDIUMVTOL MOBILE NOTDEFENSE NOTSUB NOTSUBNOTSHIP VTOL WEAPON]],
	collide = false,
	copyright = [[Copyright 1997 Humongous Entertainment. All rights reserved.]],
	cruiseAlt = 55,
	defaultmissiontype = [[VTOL_standby]],
	description = [[Heavy Gunship]],
	designation = [[tll-cop]],
	explodeAs = [[BIG_UNITEX]],
	firestandorders = 1,
	footprintX = 3,
	footprintZ = 3,
	frenchdescription = [[H�licopt�re de combat]],
	germandescription = [[Kampfhubschrauber]],
	hoverAttack = true,
	italiandescription = [[Elicottero]],
	maneuverleashlength = 1280,
	maxDamage = 2155,
	maxSlope = 10,
	maxVelocity = 7,
	maxWaterDepth = 0,
	mobilestandorders = 1,
	name = [[Dark Crow]],
	noAutoFire = false,
	noChaseCategory = [[SUB VTOL]],
	objectName = [[tllcopter]],
	ovradjust = 1,
	radarDistance = 0,
	scale = 1,
	selfDestructAs = [[BIG_UNIT]],
	shootme = 1,
	side = [[TLL]],
	sightDistance = 350,
	spanishdescription = [[Helic�ptero de combate]],
	standingfireorder = 2,
	standingmoveorder = 1,
	steeringmode = 1,
	threed = 1,
	turnRate = 720,
	unitname = [[tllcopter]],
	unitnumber = 890,
	version = 3.1,
	workerTime = 0,
	zbuffer = 1,
	sounds = {
		canceldestruct = [[cancel2]],
		underattack = [[tllwarning]],
		arrived = {
			[1] = [[tllvtolstop2]],
		},
		cant = {
			[1] = [[wearoff]],
		},
		count = {
			[1] = [[tllcount]],
			[2] = [[tllcount]],
			[3] = [[tllcount]],
			[4] = [[tllcount]],
			[5] = [[tllcount]],
			[6] = [[tllcount]],
		},
		ok = {
			[1] = [[tllvtolgo2]],
		},
		select = {
			[1] = [[vtolarac]],
		},
	},
	weaponDefs = nil,
	weapons = {
		[1] = {
			def = [[VTOL_EMG]],
			onlyTargetCategory = [[NOTVTOL]],
		},
		[2] = {
			def = [[VTOL_EMG]],
			onlyTargetCategory = [[NOTVTOL]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	VTOL_EMG = {
		areaOfEffect = 8,
		burst = 3,
		burstrate = 0.1,
		craterBoost = 0,
		craterMult = 0,
		endsmoke = 0,
		explosionGenerator = [[custom:BRAWLIMPACTS]],
		impactonly = 1,
		impulseBoost = 0.123,
		impulseFactor = 0.123,
		intensity = 0.8,
		lineOfSight = true,
		name = [[E.M.G.]],
		noSelfDamage = true,
		pitchtolerance = 12000,
		range = 380,
		reloadtime = 0.8,
		renderType = 4,
		rgbColor = [[1 0.95 0.4]],
		size = 2.5,
		soundStart = [[brawlemg]],
		sprayAngle = 1024,
		startsmoke = 0,
		tolerance = 6000,
		turret = false,
		weaponTimer = 1,
		weaponType = [[Cannon]],
		weaponVelocity = 450,
		damage = {
			bombers = 5,
			commanders = 12.5,
			default = 25,
			fighters = 5,
			flak_resistant = 5,
			unclassed_air = 5,
		},
	},
}
unitDef.weaponDefs = weaponDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
