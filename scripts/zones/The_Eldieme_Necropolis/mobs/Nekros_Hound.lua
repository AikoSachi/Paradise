-----------------------------------
-- Area: The Eldieme Necropolis
--  Mob: Nekros Hound
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    xi.regime.checkRegime(player, mob, 677, 2, xi.regime.type.GROUNDS)
    xi.regime.checkRegime(player, mob, 678, 2, xi.regime.type.GROUNDS)
end

return entity
