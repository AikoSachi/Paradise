-----------------------------------
-- Area: Valkurm Dunes
--  Mob: Brutal Sheep
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    xi.regime.checkRegime(player, mob, 10, 1, xi.regime.type.FIELDS)
end

return entity
