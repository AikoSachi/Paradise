-----------------------------------
-- Area: Upper Delkfutt's Tower
--  Mob: Jotunn Hallkeeper
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    xi.regime.checkRegime(player, mob, 787, 1, xi.regime.type.GROUNDS)
    xi.regime.checkRegime(player, mob, 788, 2, xi.regime.type.GROUNDS)
end

return entity
