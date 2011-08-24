-- emg_hit
-- brawlimpacts

return {
  ["emg_hit"] = {
    usedefaultexplosions = false,
    groundflash = {
      circlealpha        = 1,
      circlegrowth       = 0,
      flashalpha         = 0.9,
      flashsize          = 8,
      ttl                = 4,
      color = {
        [1]  = 1,
        [2]  = 1,
        [3]  = 0.43999999761581,
      },
    },
    sparks = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      unit               = 0,
      properties = {
        airdrag            = 0.97,
        colormap           = [[1 1 0.4 0.01   1 1 0.4 0.01   1 0.8 0.3 0.01   0 0 0 0.01]],
        directional        = true,
        emitrot            = 0,
        emitrotspread      = 40,
        emitvector         = [[dir]],
        gravity            = [[0, -0.2, 0]],
        numparticles       = 4,
        particlelife       = 7,
        particlelifespread = 0,
        particlesize       = 6,
        particlesizespread = 0,
        particlespeed      = 3,
        particlespeedspread = 4,
        pos                = [[0, 1, 0]],
        sizegrowth         = 0,
        sizemod            = 1.0,
        texture            = [[plasma]],
      },
    },
  },

  ["brawlimpacts"] = {
    usedefaultexplosions = false,
    groundflash = {
      circlealpha        = 1,
      circlegrowth       = 0,
      flashalpha         = 0.9,
      flashsize          = 12,
      ttl                = 3,
      color = {
        [1]  = 1,
        [2]  = 1,
        [3]  = 0.43999999761581,
      },
    },
    sparks = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      unit               = 0,
      properties = {
        airdrag            = 0.97,
        colormap           = [[1 1 0.4 0.01   1 1 0.4 0.01   1 0.8 0.3 0.01   0 0 0 0.01]],
        directional        = true,
        emitrot            = 0,
        emitrotspread      = 90,
        emitvector         = [[dir]],
        gravity            = [[0, -0.4, 0]],
        numparticles       = 4,
        particlelife       = 6,
        particlelifespread = 6,
        particlesize       = 6,
        particlesizespread = 0,
        particlespeed      = 8,
        particlespeedspread = 6,
        pos                = [[0, 1, 0]],
        sizegrowth         = 0,
        sizemod            = 1.0,
        texture            = [[plasma]],
      },
    },
  },

}

