-----------------------------------
-- Area: Rolanberry Fields
--   NM: Drooling Daisy
-----------------------------------
require("scripts/globals/hunts")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    xi.hunts.checkHunt(mob, player, 216)
end

return entity
