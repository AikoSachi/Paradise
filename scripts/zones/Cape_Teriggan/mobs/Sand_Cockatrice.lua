-----------------------------------
-- Area: Cape Teriggan
--  Mob: Sand Cockatrice
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    xi.regime.checkRegime(player, mob, 107, 2, xi.regime.type.FIELDS)
    xi.regime.checkRegime(player, mob, 108, 1, xi.regime.type.FIELDS)
end

return entity
