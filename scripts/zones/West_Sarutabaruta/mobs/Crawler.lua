-----------------------------------
-- Area: West Sarutabaruta
--  Mob: Crawler
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    xi.regime.checkRegime(player, mob, 28, 1, xi.regime.type.FIELDS)
    xi.regime.checkRegime(player, mob, 29, 2, xi.regime.type.FIELDS)
end

return entity
