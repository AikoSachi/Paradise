-----------------------------------
-- Area: Western Altepa Desert
--  Mob: Goblin Welldigger
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    xi.regime.checkRegime(player, mob, 137, 1, xi.regime.type.FIELDS)
end

return entity
