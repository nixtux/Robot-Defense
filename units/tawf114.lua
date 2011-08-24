-- UNITDEF -- TAWF114 --
--------------------------------------------------------------------------------

local unitName = "tawf114"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.0209,
  badTargetCategory  = [[VTOL]],
  bmcode             = 1,
  brakeRate          = 0.0198,
  buildCostEnergy    = 20701,
  buildCostMetal     = 939,
  builder            = false,
  buildPic           = [[TAWF114.png]],
  buildTime          = 23129,
  canAttack          = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = 1,
  category           = [[ALL TANK WEAPON NOTSUB NOTAIR]],
  corpse             = [[DEAD]],
  defaultmissiontype = [[Standby]],
  description        = [[Heavy Missile Tank]],
  energyMake         = 1.1,
  energyStorage      = 22,
  energyUse          = 1.1,
  explodeAs          = [[BIG_UNITEX]],
  firestandorders    = 1,
  footprintX         = 4,
  footprintZ         = 4,
  idleAutoHeal       = 5,
  idleTime           = 1800,
  leaveTracks        = true,
  maneuverleashlength = 640,
  maxDamage          = 2250,
  maxSlope           = 20,
  maxVelocity        = 1.905,
  maxWaterDepth      = 20,
  metalStorage       = 4,
  mobilestandorders  = 1,
  movementClass      = [[HTANK4]],
  name               = [[Banisher]],
  noAutoFire         = false,
  noChaseCategory    = [[VTOL]],
  objectName         = [[TAWF114]],
  seismicSignature   = 0,
  selfDestructAs     = [[BIG_UNIT]],
  side               = [[CORE]],
  sightDistance      = 546,
  smoothAnim         = true,
  standingfireorder  = 2,
  standingmoveorder  = 1,
  steeringmode       = 1,
  trackOffset        = 8,
  trackStrength      = 10,
  trackStretch       = 1,
  trackType          = [[StdTank]],
  trackWidth         = 42,
  turnRate           = 375.1,
  unitname           = [[tawf114]],
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
      [[vcormove]],
    },
    select = {
      [[vcorsel]],
    },
  },
  weapons = {
    [1]  = {
      badTargetCategory  = [[VTOL]],
      def                = [[TAWF_BANISHER]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 270,
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  TAWF_BANISHER = {
    areaOfEffect       = 128,
    craterBoost        = 0,
    craterMult         = 0,
    edgeEffectiveness  = 0.4,
    explosionGenerator = [[custom:VEHHVYROCKET_EXPLOSION]],
    fireStarter        = 20,
    guidance           = true,
    impulseBoost       = 0.123,
    impulseFactor      = 0.123,
    lineOfSight        = true,
    model              = [[TAWF114a]],
    name               = [[Banisher]],
    noSelfDamage       = true,
    range              = 900,
    reloadtime         = 7.5,
    renderType         = 1,
    selfprop           = true,
    smokedelay         = 0.01,
    smokeTrail         = true,
    soundHit           = [[TAWF114b]],
    soundStart         = [[TAWF114a]],
    startsmoke         = 1,
    startVelocity      = 400,
    tolerance          = 9000,
    tracks             = true,
    trajectoryHeight   = 0.45,
    turnRate           = 22000,
    turret             = true,
    weaponAcceleration = 70,
    weaponTimer        = 5,
    weaponType         = [[MissileLauncher]],
    weaponVelocity     = 400,
    damage = {
      commanders         = 1000,
      default            = 1000,
      l1subs             = 5,
      l2subs             = 5,
      l3subs             = 5,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
  DEAD = {
    blocking           = true,
    category           = [[corpses]],
    damage             = unitDef.maxDamage*0.6,
    description        = [[Banisher Wreckage]],
    energy             = 0,
    featureDead        = [[HEAP]],
    featurereclamate   = [[SMUDGE01]],
    footprintX         = 3,
    footprintZ         = 3,
    height             = 30,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.8,
    object             = [[TAWF114_DEAD]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
  HEAP = {
    blocking           = false,
    category           = [[heaps]],
    damage             = unitDef.maxDamage*0.36,
    description        = [[Banisher Heap]],
    energy             = 0,
    featurereclamate   = [[SMUDGE01]],
    footprintX         = 3,
    footprintZ         = 3,
    height             = 5,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.64,
    object             = [[3X3A]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
