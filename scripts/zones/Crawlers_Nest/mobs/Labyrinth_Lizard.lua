-----------------------------------
-- Area: Crawlers' Nest
--  Mob: Labyrinth Lizard
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    xi.regime.checkRegime(player, mob, 689, 1, xi.regime.type.GROUNDS)
end

return entity
