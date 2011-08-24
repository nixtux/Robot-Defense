-- UNITDEF -- ARMSUBK --
--------------------------------------------------------------------------------

local unitName = "armsubk"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.034,
  activateWhenBuilt  = true,
  badTargetCategory  = [[NOTSUB]],
  bmcode             = 1,
  brakeRate          = 0.45,
  buildCostEnergy    = 9481,
  buildCostMetal     = 1048,
  builder            = false,
  buildPic           = [[ARMSUBK.png]],
  buildTime          = 17767,
  canAttack          = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = 1,
  category           = [[ALL UNDERWATER NOTLAND MOBILE WEAPON NOTAIR]],
  collisionvolumeoffsets = [[0 0 0]],
  collisionvolumescales = [[25 25 65]],
  collisionvolumetest = 0,
  collisionvolumetype = [[Ell]],
  corpse             = [[DEAD]],
  defaultmissiontype = [[Standby]],
  description        = [[Submarine Killer]],
  energyMake         = 0.5,
  energyStorage      = 0,
  energyUse          = 0.5,
  explodeAs          = [[SMALL_UNITEX]],
  firestandorders    = 1,
  footprintX         = 3,
  footprintZ         = 3,
  iconType           = [[sea]],
  idleAutoHeal       = 5,
  idleTime           = 1800,
  maneuverleashlength = 640,
  maxDamage          = 895,
  maxVelocity        = 3.1,
  metalStorage       = 0,
  minWaterDepth      = 20,
  mobilestandorders  = 1,
  movementClass      = [[UBOAT3]],
  name               = [[Piranha]],
  noAutoFire         = false,
  noChaseCategory    = [[NOTSUB]],
  objectName         = [[ARMSUBK]],
  seismicSignature   = 0,
  selfDestructAs     = [[SMALL_UNIT]],
  side               = [[ARM]],
  sightDistance      = 390,
  smoothAnim         = true,
  sonarDistance      = 525,
  standingfireorder  = 2,
  standingmoveorder  = 1,
  steeringmode       = 1,
  turnRate           = 298,
  unitname           = [[armsubk]],
  upright            = true,
  waterline          = 30,
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
      [[suarmmov]],
    },
    select = {
      [[suarmsel]],
    },
  },
  weapons = {
    [1]  = {
      badTargetCategory  = [[NOTSUB]],
      def                = [[ARMSMART_TORPEDO]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 150,
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  ARMSMART_TORPEDO = {
    areaOfEffect       = 16,
    avoidFriendly      = false,
    burnblow           = true,
    collideFriendly    = false,
    craterBoost        = 0,
    craterMult         = 0,
    explosionGenerator = [[custom:FLASH2]],
    guidance           = true,
    impactonly         = 1,
    impulseBoost       = 0.123,
    impulseFactor      = 0.123,
    lineOfSight        = true,
    model              = [[torpedo]],
    name               = [[AdvancedTorpedo]],
    noSelfDamage       = true,
    propeller          = 1,
    range              = 600,
    reloadtime         = 2,
    renderType         = 1,
    selfprop           = true,
    soundHit           = [[xplodep1]],
    soundStart         = [[torpedo1]],
    startVelocity      = 120,
    tolerance          = 32767,
    tracks             = true,
    turnRate           = 12000,
    turret             = false,
    waterWeapon        = true,
    weaponAcceleration = 20,
    weaponTimer        = 3,
    weaponType         = [[TorpedoLauncher]],
    weaponVelocity     = 200,
    damage = {
      atl                = 375,
      default            = 250,
      krogoth            = 1000,
      l1subs             = 400,
      l2subs             = 400,
      l3subs             = 500,
      tl                 = 375,
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
    description        = [[Piranha Wreckage]],
    energy             = 0,
    featureDead        = [[HEAP]],
    footprintX         = 3,
    footprintZ         = 3,
    height             = 4,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.8,
    object             = [[ARMSUBK_DEAD]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
  HEAP = {
    blocking           = false,
    category           = [[heaps]],
    damage             = unitDef.maxDamage*0.36,
    description        = [[Piranha Heap]],
    energy             = 0,
    footprintX         = 2,
    footprintZ         = 2,
    height             = 4,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.64,
    object             = [[2X2A]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
