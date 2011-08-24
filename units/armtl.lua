-- UNITDEF -- ARMTL --
--------------------------------------------------------------------------------

local unitName = "armtl"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0,
  activateWhenBuilt  = true,
  badTargetCategory  = [[HOVER NOTSHIP]],
  bmcode             = 0,
  brakeRate          = 0,
  buildAngle         = 16384,
  buildCostEnergy    = 2058,
  buildCostMetal     = 302,
  builder            = false,
  buildPic           = [[ARMTL.png]],
  buildTime          = 4120,
  canAttack          = true,
  canstop            = 1,
  category           = [[ALL NOTLAND WEAPON NOTSUB NOTSHIP NOTAIR]],
  corpse             = [[DEAD]],
  defaultmissiontype = [[GUARD_NOMOVE]],
  description        = [[Torpedo Launcher]],
  energyMake         = 0.1,
  energyStorage      = 0,
  energyUse          = 0.1,
  explodeAs          = [[MEDIUM_BUILDINGEX]],
  firestandorders    = 1,
  footprintX         = 3,
  footprintZ         = 3,
  iconType           = [[building]],
  idleAutoHeal       = 5,
  idleTime           = 1800,
  maxDamage          = 1890,
  maxVelocity        = 0,
  metalStorage       = 0,
  minWaterDepth      = 1,
  name               = [[Harpoon]],
  noAutoFire         = false,
  objectName         = [[ARMTL]],
  seismicSignature   = 0,
  selfDestructAs     = [[MEDIUM_BUILDING]],
  side               = [[ARM]],
  sightDistance      = 455,
  smoothAnim         = true,
  standingfireorder  = 2,
  turnRate           = 0,
  unitname           = [[armtl]],
  waterline          = 12,
  workerTime         = 0,
  yardMap            = [[wwwwwwwww]],
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
      [[sharmmov]],
    },
    select = {
      [[sharmsel]],
    },
  },
  weapons = {
    [1]  = {
      badTargetCategory  = [[HOVER NOTSHIP]],
      def                = [[COAX_TORPEDO]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  COAX_TORPEDO = {
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
    name               = [[Level1TorpedoLauncher]],
    noSelfDamage       = true,
    propeller          = 1,
    range              = 600,
    reloadtime         = 1.9,
    renderType         = 1,
    selfprop           = true,
    soundHit           = [[xplodep2]],
    soundStart         = [[torpedo1]],
    startVelocity      = 200,
    tracks             = true,
    turnRate           = 2500,
    turret             = true,
    waterWeapon        = true,
    weaponAcceleration = 40,
    weaponTimer        = 3,
    weaponType         = [[TorpedoLauncher]],
    weaponVelocity     = 320,
    damage = {
      commanders         = 260,
      default            = 280,
      krogoth            = 260,
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
    description        = [[Harpoon Wreckage]],
    energy             = 0,
    footprintX         = 3,
    footprintZ         = 3,
    height             = 4,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.8,
    object             = [[ARMTL_DEAD]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
