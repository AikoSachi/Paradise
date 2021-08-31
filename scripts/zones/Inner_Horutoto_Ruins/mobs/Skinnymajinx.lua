-----------------------------------
-- Area: Inner Horutoto Ruins
--  Mob: Skinnymajinx
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    xi.regime.checkRegime(player, mob, 654, 2, xi.regime.type.GROUNDS)
end

return entity
