-----------------------------------
-- Area: Upper Delkfutt's Tower
--  Mob: Dire Bat
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    xi.regime.checkRegime(player, mob, 786, 3, xi.regime.type.GROUNDS)
    xi.regime.checkRegime(player, mob, 787, 3, xi.regime.type.GROUNDS)
end

return entity
