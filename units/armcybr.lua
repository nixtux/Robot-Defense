-- UNITDEF -- ARMCYBR --
--------------------------------------------------------------------------------

local unitName = "armcybr"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.396,
  bankscale          = 1,
  bmcode             = 1,
  brakeRate          = 5,
  buildCostEnergy    = 40371,
  buildCostMetal     = 2103,
  builder            = false,
  buildPic           = [[ARMCYBR.png]],
  buildTime          = 76203,
  canAttack          = true,
  canFly             = true,
  canGuard           = false,
  canMove            = true,
  canPatrol          = true,
  canstop            = 1,
  category           = [[ARM VTOL LEVEL2 WEAPON NOTSUB ALL]],
  collide            = false,
  cruiseAlt          = 300,
  defaultmissiontype = [[VTOL_standby]],
  description        = [[Atomic Bomber]],
  energyMake         = 0,
  energyStorage      = 0,
  energyUse          = 40,
  explodeAs          = [[SMALL_BUILDING]],
  firestandorders    = 1,
  footprintX         = 3,
  footprintZ         = 3,
  iconType           = [[air]],
  idleAutoHeal       = 5,
  idleTime           = 1800,
  maneuverleashlength = 1280,
  maxDamage          = 3600,
  maxSlope           = 10,
  maxVelocity        = 10.35,
  maxWaterDepth      = 0,
  metalStorage       = 0,
  mobilestandorders  = 1,
  moverate1          = 9,
  name               = [[Liche]],
  noAutoFire         = true,
  objectName         = [[ARMCYBR]],
  seismicSignature   = 0,
  selfDestructAs     = [[LARGE_BUILDING]],
  side               = [[ARM]],
  sightDistance      = 455,
  smoothAnim         = true,
  standingfireorder  = 2,
  standingmoveorder  = 1,
  steeringmode       = 1,
  turnRate           = 535,
  unitname           = [[armcybr]],
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
      [[vtolarmv]],
    },
    select = {
      [[vtolarac]],
    },
  },
  weapons = {
    [1]  = {
      def                = [[ARM_PIDR]],
      onlyTargetCategory = [[NOTAIR]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  ARM_PIDR = {
    areaOfEffect       = 412,
    avoidFeature       = false,
    avoidFriendly      = false,
    collideFriendly    = false,
    commandfire        = true,
    craterBoost        = 0,
    craterMult         = 0,
    cruise             = 1,
    cruisealt          = 260,
    edgeEffectiveness  = 0.5,
    explosionGenerator = [[custom:FLASHSMALLBUILDINGEX]],
    fireStarter        = 100,
    flightTime         = 175,
    guidance           = true,
    impulseBoost       = 1.723,
    impulseFactor      = 1.75,
    lineOfSight        = true,
    model              = [[plasmafire]],
    name               = [[PlasmaImplosionDumpRocket]],
    noautorange        = 1,
    noSelfDamage       = true,
    pitchtolerance     = 16000,
    range              = 500,
    reloadtime         = 8,
    renderType         = 1,
    selfprop           = true,
    shakeduration      = 2,
    shakemagnitude     = 18,
    smokedelay         = 0.2,
    smokeTrail         = true,
    soundHit           = [[tonukeex]],
    soundStart         = [[bombdropxx]],
    soundwater         = [[towaterex]],
    startsmoke         = 1,
    startVelocity      = 200,
    targetable         = 0,
    tolerance          = 16000,
    tracks             = true,
    turnRate           = 32768,
    twoPhase           = true,
    unitsonly          = 0,
    weaponAcceleration = 40,
    weaponTimer        = 6,
    weaponType         = [[MissileLauncher]],
    weaponVelocity     = 400,
    damage = {
      commanders         = 1750,
      default            = 7625,
      gunships           = 45,
      hgunships          = 45,
      l1bombers          = 45,
      l1fighters         = 45,
      l1subs             = 5,
      l2bombers          = 45,
      l2fighters         = 45,
      l2subs             = 5,
      l3subs             = 5,
      vradar             = 45,
      vtol               = 45,
      vtrans             = 45,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------