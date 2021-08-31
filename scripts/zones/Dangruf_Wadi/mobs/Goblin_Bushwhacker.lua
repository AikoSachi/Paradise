-----------------------------------
-- Area: Dangruf Wadi
--  Mob: Goblin Bushwhacker
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    xi.regime.checkRegime(player, mob, 640, 1, xi.regime.type.GROUNDS)
    xi.regime.checkRegime(player, mob, 645, 3, xi.regime.type.GROUNDS)
end

return entity
