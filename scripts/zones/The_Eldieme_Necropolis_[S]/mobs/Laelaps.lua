-----------------------------------
-- Area: The Eldieme Necropolis [S]
--   NM: Laelaps
-----------------------------------
require("scripts/globals/hunts")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    xi.hunts.checkHunt(mob, player, 495)
end

return entity
