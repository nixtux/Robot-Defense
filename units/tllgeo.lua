-- UNITDEF -- TLLGEO --
--------------------------------------------------------------------------------

local unitName = "tllgeo"

--------------------------------------------------------------------------------

local unitDef = {
  activateWhenBuilt  = true,
  bmcode             = 0,
  buildAngle         = 8192,
  buildCostEnergy    = 3000,
  buildCostMetal     = 1710,
  builder            = false,
  buildTime          = 32000,
  category           = [[TLL   LEVEL2 NOWEAPON NOTAIR NOTSUB]],
  copyright          = [[Copyright 1997 Humongous Entertainment. All rights reserved.]],
  corpse             = [[dead]],
  description        = [[Produces Energy/Metal]],
  designation        = [[]],
  energyMake         = 700,
  energyStorage      = 1400,
  energyUse          = 600,
  explodeAs          = [[ATOMIC_BLAST]],
  footprintX         = 4,
  footprintZ         = 4,
  frenchdescription  = [[Produit de l'�nergie/Metal]],
  frenchname         = [[Centrale g�othermique]],
  germandescription  = [[Liefert Energie/Metal]],
  germanname         = [[Geotherm. Kraftwerk]],
  iconType           = [[building]],
  italiandescription = [[Produce energia/Metal]],
  italianname        = [[Stabilimento Geotermico]],
  makesMetal         = 7,
  maxDamage          = 1950,
  maxSlope           = 10,
  maxWaterDepth      = 0,
  metalStorage       = 600,
  name               = [[Geothermal Foundry]],
  noAutoFire         = false,
  objectName         = [[T4Energy.s3o]],
  onoffable          = false,
  selfDestructAs     = [[NUCLEAR_MISSILE]],
  side               = [[TLL]],
  sightDistance      = 210,
  spanishdescription = [[Genera energ�a/Metal]],
  spanishname        = [[Planta Geot�rmica]],
  threed             = 1,
  unitname           = [[tllgeo]],
  unitnumber         = 803,
  version            = 1,
  yardMap            = [[GGGGGGGGGGGGGGGG]],
  zbuffer            = 1,
  sounds = {
    activate           = [[tllgeo]],
    canceldestruct     = [[cancel2]],
    deactivate         = [[tllgeooff]],
    underattack        = [[tllwarning]],
    count = {
      [[tllcount]],
      [[tllcount]],
      [[tllcount]],
      [[tllcount]],
      [[tllcount]],
      [[tllcount]],
    },
    select = {
      [[tllgeosel]],
    },
  },
}


--------------------------------------------------------------------------------

local featureDefs = {
  dead = {
    blocking           = true,
    category           = [[tll_corpses]],
    damage             = unitDef.maxDamage*0.6,
    description        = [[wreckage]],
    featureDead        = [[heap]],
    featurereclamate   = [[smudge01]],
    footprintX         = 4,
    footprintZ         = 4,
    height             = 21,
    hitdensity         = 105,
    metal              = unitDef.buildCostMetal*0.8,
    object             = [[tllmex_dead]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
  heap = {
    blocking           = false,
    category           = [[heaps]],
    damage             = unitDef.maxDamage*0.36,
    description        = [[wreckage]],
    featurereclamate   = [[smudge01]],
    footprintX         = 4,
    footprintZ         = 4,
    height             = 2,
    hitdensity         = 105,
    metal              = unitDef.buildCostMetal*0.64,
    object             = [[4x4a]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
