-----------------------------------
-- Area: Beaucedine Glacier [S]
--   NM: Came-cruse
-----------------------------------
require("scripts/globals/hunts")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    xi.hunts.checkHunt(mob, player, 536)
end

return entity
