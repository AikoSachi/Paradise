-----------------------------------
-- Area: Xarcabard
--  Mob: Blizzard Gigas
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    xi.regime.checkRegime(player, mob, 54, 1, xi.regime.type.FIELDS)
    xi.regime.checkRegime(player, mob, 55, 2, xi.regime.type.FIELDS)
end

return entity
