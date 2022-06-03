-----------------------------------
-- Area: Garlaige Citadel
--  Mob: Wraith
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    xi.regime.checkRegime(player, mob, 708, 3, xi.regime.type.GROUNDS)
end

return entity
