-----------------------------------
-- Area: Rolanberry Fields
--  Mob: Bronze Quadav
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    xi.regime.checkRegime(player, mob, 87, 2, xi.regime.type.FIELDS)
end

return entity
