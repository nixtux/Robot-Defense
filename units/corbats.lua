-- UNITDEF -- CORBATS --
--------------------------------------------------------------------------------

local unitName = "corbats"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.03,
  badTargetCategory  = [[VTOL]],
  bmcode             = 1,
  brakeRate          = 0.025,
  buildAngle         = 16384,
  buildCostEnergy    = 21941,
  buildCostMetal     = 5404,
  builder            = false,
  buildPic           = [[CORBATS.png]],
  buildTime          = 60640,
  canAttack          = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = 1,
  category           = [[ALL NOTLAND MOBILE WEAPON SHIP NOTSUB NOTAIR]],
  corpse             = [[DEAD]],
  defaultmissiontype = [[Standby]],
  description        = [[Battleship]],
  energyMake         = 46,
  energyStorage      = 0,
  energyUse          = 44,
  explodeAs          = [[BIG_UNITEX]],
  firestandorders    = 1,
  floater            = true,
  footprintX         = 6,
  footprintZ         = 6,
  iconType           = [[sea]],
  idleAutoHeal       = 5,
  idleTime           = 1800,
  maneuverleashlength = 640,
  maxDamage          = 13430,
  maxVelocity        = 2.64,
  metalStorage       = 0,
  minWaterDepth      = 15,
  mobilestandorders  = 1,
  movementClass      = [[DBOAT6]],
  name               = [[Warlord]],
  noAutoFire         = false,
  noChaseCategory    = [[VTOL]],
  objectName         = [[CORBATS]],
  seismicSignature   = 0,
  selfDestructAs     = [[BIG_UNIT]],
  side               = [[CORE]],
  sightDistance      = 455,
  smoothAnim         = true,
  standingfireorder  = 2,
  standingmoveorder  = 1,
  steeringmode       = 1,
  turnRate           = 306,
  unitname           = [[corbats]],
  workerTime         = 0,
  sounds = {
    canceldestruct     = [[cancel2]],
    underattack        = [[warning1]],
    cant = {
      [[cantdo4]],
    },
    count = {
      [[count6]],
      [[count5]],
      [[count4]],
      [[count3]],
      [[count2]],
      [[count1]],
    },
    ok = {
      [[shcormov]],
    },
    select = {
      [[shcorsel]],
    },
  },
  weapons = {
    [1]  = {
      badTargetCategory  = [[VTOL]],
      def                = [[COR_BATS]],
      onlyTargetCategory = [[NOTAIR]],
    },
    [2]  = {
      def                = [[CORE_BATSLASER]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 330,
      onlyTargetCategory = [[NOTAIR]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  CORE_BATSLASER = {
    areaOfEffect       = 8,
    beamlaser          = 1,
    beamTime           = 0.2,
    coreThickness      = 0.2,
    craterBoost        = 0,
    craterMult         = 0,
    energypershot      = 125,
    explosionGenerator = [[custom:SMALL_GREEN_LASER_BURN]],
    fireStarter        = 90,
    impactonly         = 1,
    impulseBoost       = 0.123,
    impulseFactor      = 0.123,
    laserFlareSize     = 15,
    lineOfSight        = true,
    name               = [[HighEnergyLaser]],
    noSelfDamage       = true,
    range              = 950,
    reloadtime         = 1.1,
    renderType         = 0,
    rgbColor           = [[0 1 0]],
    soundHit           = [[lasrhit1]],
    soundStart         = [[Lasrmas2]],
    targetMoveError    = 0.2,
    thickness          = 3,
    tolerance          = 10000,
    turret             = true,
    weaponType         = [[BeamLaser]],
    weaponVelocity     = 700,
    damage = {
      default            = 300,
      gunships           = 65,
      hgunships          = 65,
      l1bombers          = 65,
      l1fighters         = 65,
      l1subs             = 5,
      l2bombers          = 65,
      l2fighters         = 65,
      l2subs             = 5,
      l3subs             = 5,
      vradar             = 65,
      vtol               = 65,
      vtrans             = 65,
    },
  },
  COR_BATS = {
    accuracy           = 400,
    areaOfEffect       = 96,
    ballistic          = true,
    craterBoost        = 0,
    craterMult         = 0,
    explosionGenerator = [[custom:FLASH96]],
    gravityaffected    = [[true]],
    impulseBoost       = 0.123,
    impulseFactor      = 0.123,
    minbarrelangle     = -25,
    name               = [[BattleshipCannon]],
    noSelfDamage       = true,
    range              = 1100,
    reloadtime         = 0.5,
    renderType         = 4,
    soundHit           = [[xplomed2]],
    soundStart         = [[cannhvy1]],
    startsmoke         = 1,
    turret             = true,
    weaponType         = [[Cannon]],
    weaponVelocity     = 400,
    damage = {
      default            = 450,
      gunships           = 65,
      hgunships          = 65,
      l1bombers          = 65,
      l1fighters         = 65,
      l1subs             = 5,
      l2bombers          = 65,
      l2fighters         = 65,
      l2subs             = 5,
      l3subs             = 5,
      vradar             = 65,
      vtol               = 65,
      vtrans             = 65,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
  DEAD = {
    blocking           = false,
    category           = [[corpses]],
    damage             = unitDef.maxDamage*0.6,
    description        = [[Warlord Wreckage]],
    energy             = 0,
    featureDead        = [[HEAP]],
    footprintX         = 6,
    footprintZ         = 6,
    height             = 4,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.8,
    object             = [[CORBATS_DEAD]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
  HEAP = {
    blocking           = false,
    category           = [[heaps]],
    damage             = unitDef.maxDamage*0.36,
    description        = [[Warlord Heap]],
    energy             = 0,
    footprintX         = 2,
    footprintZ         = 2,
    height             = 4,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.64,
    object             = [[6X6C]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------