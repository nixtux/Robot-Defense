unitDef = {
  unitname            = "e_chickenq",
  name                = "Chicken Queen",
  description         = "Clucking Hell!",
  acceleration        = 1.2,
  bmcode              = "1",
  brakeRate           = 2,
  buildCostEnergy     = 2000000,
  buildCostMetal      = 50000,
  builder             = false,
  buildTime           = 1056000,
  canAttack           = true,
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  canstop             = "1",
  cantBeTransported   = true,
  category            = "MOBILE WEAPON NOTAIR NOTSUB NOTSHIP ALL",
  corpse              = "DEAD",
  defaultmissiontype  = "Standby",
  explodeAs           = "QUEEN_DEATH",
  footprintX          = 3,
  footprintZ          = 3,
  iconType            = "chickenq",
  idleAutoHeal        = 200,
  idleTime            = 2200,
  leaveTracks         = true,
  maneuverleashlength = 2000,
  mass                = 2000000,
  maxDamage           = 255000,
  maxSlope            = 128,
  maxVelocity         = 2.8,
  maxWaterDepth       = 128,
  seismicSignature    = 4,
  turninplace         = 0,
  movementClass       = "CHICKQUEEN",
  noAutoFire          = false,
  noChaseCategory     = "VTOL",
  objectName          = "chickenq.s3o",
  selfDestructAs      = "QUEEN_DEATH",
  turnrate            = 400,
  collisionVolumeType = "box",
  collisionVolumeOffsets = "0 -52 15",
  collisionVolumeScales = "46 110 120",
  collisionVolumeTest = 1,

  sfxtypes            = {

    explosiongenerators = {
      "custom:blood_spray",
      "custom:blood_explode",
      "custom:dirt",
    },

  },

  side                = "THUNDERBIRDS",
  sightDistance       = 1250,
  airSightDistance    = 2400,
  smoothAnim          = true,
  steeringmode        = "2",
  TEDClass            = "KBOT",
  trackOffset         = 18,
  trackStrength       = 8,
  trackStretch        = 1,
  trackType           = "ChickenTrack",
  trackWidth          = 100,
  upright             = false,
  workerTime          = 0,
  CollisionSphereScale = 1.75,
  
  weapons             = {

    {
      def                = "MELEE",
      mainDir            = "0 0 1",
      maxAngleDif        = 155,
    },


    {
      def = "SPORES1",
      badTargetCategory  = "NOTAIR",
    },


    {
      def = "SPORES2",
      badTargetCategory  = "WEAPON",
    },


    {
      def = "SPORES3",
      badTargetCategory  = "NOWEAPON",
    },


    {
      def                = "GOO",
      mainDir            = "0 0 1",
      maxAngleDif        = 120,
    },
     
  },


  weaponDefs          = {

    GOO        = {
      name                    = "Blob",
      areaOfEffect            = 200,
      burst                   = 7,
      burstrate               = 0.01,
      craterBoost             = 0,
      craterMult              = 0,
      edgeeffectiveness       = 0.33,

      damage                  = {
        default = 900,
        VTRANS = 9999,
        VTOL = 9999,
        L1FIGHTERS = 9999,
        L2FIGHTERS = 9999,
        L1BOMBERS = 9999,
        L2BOMBERS = 9999,
        GUNSHIPS = 2800,
        HGUNSHIPS = 2800,
        CHICKEN = 400,
      },

      endsmoke                = "0",
      explosionGenerator      = "custom:gundam_MISSILE_EXPLOSION",
      cegTag="ROCKTRAIL",
      model = "SGreyRock1.S3O",
      soundhit = "xplomed2",
      impulseBoost            = 0,
      impulseFactor           = 0,
      intensity               = 0.7,
      interceptedByShieldType = 1,
      noSelfDamage            = true,
      collideFriendly         = false,
      range                   = 1200,
      reloadtime              = 5,
      avoidFriendly           = 0,
      avoidFeature            = 0,
      collideFriendly         = 0,
      renderType              = 4,
      rgbColor                = "0.1 0.6 1",
      lineOfSight             = false,
      minbarrelangle          = "-30",
      size                    = 8,
      sizeDecay               = 0,
      soundStart              = "bigchickenroar",
      sprayAngle              = 4096,
      proximityPriority       = -4,
      startsmoke              = "0",
      tolerance               = 5000,
      turret                  = true,
      weaponTimer             = 0.2,
      weaponVelocity          = 400,
    },


    MELEE      = {
      name                    = "ChickenClaws",
      areaOfEffect            = 60,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 1750,
		L1FIGHTERS = 9999,
		L2FIGHTERS = 9999,
		L1BOMBERS = 9999,
		L2BOMBERS = 9999,
		GUNSHIPS = 2250,
		CHICKEN = 0.001,
        TINYCHICKEN = 0.001,
      },

      endsmoke                = "0",
      explosionGenerator      = "custom:NONE",
      impulseBoost            = 1.5,
      impulseFactor           = 1.5,
      lineOfSight             = true,
      noSelfDamage            = true,
      range                   = 220,
      reloadtime              = 1.65,
      size                    = 0,
      avoidFriendly           = 0,
      avoidFeature            = 0,
      collideFriendly         = 0,
      soundStart              = "bigchickenbreath",
      startsmoke              = "0",
      targetborder            = 1,
      tolerance               = 5000,
      turret                  = true,
      waterWeapon             = true,
      weaponType              = "Cannon",
      weaponVelocity          = 2500,
    },

    SPORES1     = {
      name                    = "Missiles",
      areaOfEffect            = 60,
      avoidFriendly           = false,
      burst                   = 8,
      burstrate               = 0.11,
      collideFriendly         = false,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 145,
      },

      dance                   = 20,
      explosionGenerator      = "custom:QUEENSPIKES",
      fireStarter             = 0,
      flightTime              = 5,
      groundbounce            = 1,
      interceptedByShieldType = 0,
      guidance                = true,
      heightmod               = 0.5,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      lineOfSight             = true,
      metalpershot            = 0,
      model                   = "spike.s3o",
      noSelfDamage            = true,
      range                   = 700,
      reloadtime              = 3.5,
      renderType              = 1,
      selfprop                = true,
      smokedelay              = "0.1",
      smokeTrail              = true,
      soundHit                = "xplosml2",
      burnblow                = 1,
      startsmoke              = "1",
      startVelocity           = 200,
      texture1                = "",
      texture2                = "sporetrail",
      tolerance               = 10000,
      tracks                  = true,
      trajectoryHeight        = 2,
      avoidFriendly           = 0,
      proximityPriority       = 3,
      turnRate                = 48000,
      turret                  = true,
      waterweapon             = true,
      weaponAcceleration      = 200,
      weaponType              = "MissileLauncher",
      weaponVelocity          = 1000,
      wobble                  = 64000,
    },

    SPORES2     = {
      name                    = "Missiles",
      areaOfEffect            = 60,
      avoidFriendly           = false,
      burst                   = 8,
      burstrate               = 0.09,
      collideFriendly         = false,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 145,
      },

      dance                   = 20,
      explosionGenerator      = "custom:QUEENSPIKES",
      fireStarter             = 0,
      flightTime              = 5,
      groundbounce            = 1,
      interceptedByShieldType = 0,
      guidance                = true,
      heightmod               = 0.5,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      lineOfSight             = true,
      metalpershot            = 0,
      model                   = "spike.s3o",
      noSelfDamage            = true,
      range                   = 700,
      reloadtime              = 3,
      burnblow                = 1,
      renderType              = 1,
      selfprop                = true,
      smokedelay              = "0.1",
      smokeTrail              = true,
      soundHit                = "xplosml2",
      startsmoke              = "1",
      startVelocity           = 200,
      texture1                = "",
      texture2                = "sporetrail",
      tolerance               = 10000,
      tracks                  = true,
      trajectoryHeight        = 2,
      avoidFeature            = 0,
      turnRate                = 48000,
      turret                  = true,
      waterweapon             = true,
      weaponAcceleration      = 200,
      weaponType              = "MissileLauncher",
      weaponVelocity          = 1000,
      wobble                  = 64000,
    },
    
    SPORES3     = {
      name                    = "Missiles",
      areaOfEffect            = 60,
      avoidFriendly           = false,
      burst                   = 8,
      burstrate               = 0.1,
      collideFriendly         = false,
      craterBoost             = 0,
      craterMult              = 0,
      interceptedByShieldType = 0,

      damage                  = {
        default = 145,
      },

      dance                   = 20,
      explosionGenerator      = "custom:QUEENSPIKES",
      fireStarter             = 0,
      flightTime              = 5,
      groundbounce            = 1,
      guidance                = true,
      heightmod               = 0.5,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      lineOfSight             = true,
      metalpershot            = 0,
      model                   = "spike.s3o",
      noSelfDamage            = true,
      range                   = 700,
      reloadtime              = 4,
      renderType              = 1,
      selfprop                = true,
      burnblow                = 1,
      smokedelay              = "0.1",
      smokeTrail              = true,
      soundHit                = "xplosml2",
      startsmoke              = "1",
      startVelocity           = 200,
      texture1                = "",
      texture2                = "sporetrail",
      tolerance               = 10000,
      tracks                  = true,
      trajectoryHeight        = 2,
      turnRate                = 48000,
      turret                  = true,
      waterweapon             = true,
      collideFriendly         = 0,
      proximityPriority       = -3,
      weaponAcceleration      = 200,
      weaponType              = "MissileLauncher",
      weaponVelocity          = 1000,
      wobble                  = 64000,
    },
        
  },


  featureDefs         = {

    DEAD = {
    },


    HEAP = {
    },

  },

}

return lowerkeys({ e_chickenq = unitDef })
