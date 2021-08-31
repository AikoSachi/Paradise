-----------------------------------
-- Area: Toraimarai Canal
--  Mob: Deviling Bats
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    xi.regime.checkRegime(player, mob, 622, 2, xi.regime.type.GROUNDS)
end

return entity
