-----------------------------------
-- Area: Maze of Shakhrami
--  Mob: Labyrinth Scorpion
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    xi.regime.checkRegime(player, mob, 700, 2, xi.regime.type.GROUNDS)
end

return entity
