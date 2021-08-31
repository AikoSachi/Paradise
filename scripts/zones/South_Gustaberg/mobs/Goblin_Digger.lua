-----------------------------------
-- Area: South Gustaberg
--  Mob: Goblin Digger
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    xi.regime.checkRegime(player, mob, 79, 1, xi.regime.type.FIELDS)
end

return entity
