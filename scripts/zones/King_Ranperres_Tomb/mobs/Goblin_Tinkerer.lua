-----------------------------------
-- Area: King Ranperres Tomb
--  Mob: Goblin Tinkerer
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    xi.regime.checkRegime(player, mob, 631, 2, xi.regime.type.GROUNDS)
    xi.regime.checkRegime(player, mob, 633, 2, xi.regime.type.GROUNDS)
end

return entity
