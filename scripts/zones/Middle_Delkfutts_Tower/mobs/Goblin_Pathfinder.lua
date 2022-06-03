-----------------------------------
-- Area: Middle Delkfutt's Tower
--  Mob: Goblin Pathfinder
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    xi.regime.checkRegime(player, mob, 782, 1, xi.regime.type.GROUNDS)
    xi.regime.checkRegime(player, mob, 784, 1, xi.regime.type.GROUNDS)
end

return entity
