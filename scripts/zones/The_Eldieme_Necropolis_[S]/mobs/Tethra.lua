-----------------------------------
-- Area: The Eldieme Necropolis [S]
--   NM: Tethra
-----------------------------------
require("scripts/globals/hunts")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    xi.hunts.checkHunt(mob, player, 496)
end

return entity
