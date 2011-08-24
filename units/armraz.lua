-- UNITDEF -- ARMRAZ --
--------------------------------------------------------------------------------

local unitName = "armraz"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.206,
  bmcode             = 1,
  brakeRate          = 0.262,
  buildCostEnergy    = 112344,
  buildCostMetal     = 3577,
  builder            = false,
  buildPic           = [[ARMRAZ.png]],
  buildTime          = 58566,
  canAttack          = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = 1,
  category           = [[KBOT MOBILE WEAPON ALL NOTSUB NOTAIR]],
  collisionvolumeoffsets = [[0.0 -2.0 0.0]],
  collisionvolumescales = [[38.0 58.0 26.0]],
  collisionvolumetype = [[box]],
  corpse             = [[DEAD]],
  defaultmissiontype = [[Standby]],
  description        = [[Battle Mech]],
  explodeAs          = [[MECH_BLASTSML]],
  firestandorders    = 1,
  footprintX         = 4,
  footprintZ         = 4,
  idleAutoHeal       = 5,
  idleTime           = 1800,
  immunetoparalyzer  = 1,
  maneuverleashlength = 640,
  mass               = 200000,
  maxDamage          = 15800,
  maxSlope           = 15,
  maxVelocity        = 2.6,
  maxWaterDepth      = 22,
  mobilestandorders  = 1,
  movementClass      = [[HKBOT4]],
  name               = [[Razorback]],
  noAutoFire         = false,
  objectName         = [[ARMRAZ]],
  seismicSignature   = 0,
  selfDestructAs     = [[MECH_BLAST]],
  side               = [[ARM]],
  sightDistance      = 450,
  smoothAnim         = true,
  standingfireorder  = 2,
  standingmoveorder  = 1,
  steeringmode       = 2,
  turnRate           = 668,
  unitname           = [[armraz]],
  upright            = true,
  workerTime         = 0,
  wter_badtargetcategory = [[SUB]],
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
      [[mavbok1]],
    },
    select = {
      [[mavbsel1]],
    },
  },
  weapons = {
    [1]  = {
      badTargetCategory  = [[VTOL]],
      def                = [[MECH_RAPIDLASER]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  MECH_RAPIDLASER = {
    ["--falloffrate"]  = 0.75,
    accuracy           = 32,
    areaOfEffect       = 32,
    avoidFeature       = false,
    beamlaser          = 1,
    beamTime           = 0.14,
    craterBoost        = 0,
    craterMult         = 0,
    explosionGenerator = [[custom:BURN]],
    fireStarter        = 10,
    impulseBoost       = 1,
    impulseFactor      = 1,
    lineOfSight        = true,
    name               = [[MechRapidLaser]],
    noSelfDamage       = true,
    proximityPriority  = 1.5,
    range              = 475,
    reloadtime         = 0.15,
    renderType         = 0,
    rgbColor           = [[0.75 0 0]],
    rgbColor2          = [[0.9 0.9 0.6]],
    soundHit           = [[lasrhit1]],
    soundStart         = [[lasfirerb]],
    soundTrigger       = true,
    startsmoke         = 1,
    thickness          = 3.5,
    tolerance          = 20000,
    turret             = true,
    weaponType         = [[BeamLaser]],
    weaponVelocity     = 920,
    damage = {
      default            = 125,
      gunships           = 95,
      hgunships          = 95,
      l1bombers          = 120,
      l1fighters         = 120,
      l1subs             = 5,
      l2bombers          = 120,
      l2fighters         = 120,
      l2subs             = 5,
      l3subs             = 5,
      vradar             = 120,
      vtol               = 120,
      vtrans             = 120,
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
    description        = [[Razorback Wreckage]],
    energy             = 0,
    featureDead        = [[HEAP]],
    featurereclamate   = [[SMUDGE01]],
    footprintX         = 3,
    footprintZ         = 3,
    height             = 20,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.8,
    object             = [[ARMRAZ_DEAD]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
  HEAP = {
    blocking           = false,
    category           = [[heaps]],
    damage             = unitDef.maxDamage*0.36,
    description        = [[Razorback Heap]],
    energy             = 0,
    featurereclamate   = [[SMUDGE01]],
    footprintX         = 3,
    footprintZ         = 3,
    height             = 4,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.64,
    object             = [[3X3B]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
