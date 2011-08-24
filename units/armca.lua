-- UNITDEF -- ARMCA --
--------------------------------------------------------------------------------

local unitName = "armca"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.072,
  bankscale          = 1.5,
  bmcode             = 1,
  brakeRate          = 1.875,
  buildCostEnergy    = 4320,
  buildCostMetal     = 105,
  buildDistance      = 40,
  builder            = true,
  buildPic           = [[ARMCA.png]],
  buildTime          = 8844,
  canFly             = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canReclaim         = true,
  canstop            = 1,
  category           = [[ALL MOBILE NOTLAND NOTSUB ANTIFLAME ANTIGATOR ANTIEMG ANTILASER VTOL NOWEAPON NOTSHIP]],
  collide            = false,
  cruiseAlt          = 70,
  defaultmissiontype = [[VTOL_standby]],
  description        = [[Tech Level 1]],
  energyMake         = 5,
  energyStorage      = 25,
  energyUse          = 5,
  explodeAs          = [[CA_EX]],
  footprintX         = 2,
  footprintZ         = 2,
  iconType           = [[air]],
  idleAutoHeal       = 5,
  idleTime           = 1800,
  maneuverleashlength = 1280,
  maxDamage          = 140,
  maxSlope           = 10,
  maxVelocity        = 7.94,
  maxWaterDepth      = 0,
  metalMake          = 0.05,
  metalStorage       = 25,
  mobilestandorders  = 1,
  name               = [[Construction Aircraft]],
  noAutoFire         = false,
  objectName         = [[ARMCA]],
  scale              = 0.8,
  seismicSignature   = 0,
  selfDestructAs     = [[SMALL_UNIT]],
  side               = [[arm]],
  sightDistance      = 390,
  smoothAnim         = true,
  standingmoveorder  = 1,
  steeringmode       = 1,
  terraformSpeed     = 135,
  turnRate           = 110,
  unitname           = [[armca]],
  workerTime         = 45,
  buildoptions = {
    [[armsolar]],
    [[armadvsol]],
    [[armwin]],
    [[armgeo]],
    [[armmstor]],
    [[armestor]],
    [[armcp]],
    [[armmex]],
    [[armamex]],
    [[armmakr]],
    [[armaap]],
    [[armlab]],
    [[armvp]],
    [[armap]],
    [[armsy]],
    [[armhp]],
    [[armnanotc]],
    [[armeyes]],
    [[armrad]],
    [[armdrag]],
    [[armclaw]],
    [[armllt]],
    [[tawf001]],
    [[armhlt]],
    [[armguard]],
    [[armrl]],
    [[packo]],
    [[armcir]],
    [[armdl]],
    [[armjamt]],
    [[ajuno]],
    [[amortor]],
    [[armrech3]],
  },
  sounds = {
    build              = [[nanlath1]],
    canceldestruct     = [[cancel2]],
    repair             = [[repair1]],
    underattack        = [[warning1]],
    working            = [[reclaim1]],
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
}


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------