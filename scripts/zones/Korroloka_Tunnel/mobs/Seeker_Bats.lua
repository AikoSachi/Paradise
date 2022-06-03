-----------------------------------
-- Area: Korroloka Tunnel
--  Mob: Seeker Bats
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    xi.regime.checkRegime(player, mob, 727, 2, xi.regime.type.GROUNDS)
    xi.regime.checkRegime(player, mob, 728, 1, xi.regime.type.GROUNDS)
end

return entity
