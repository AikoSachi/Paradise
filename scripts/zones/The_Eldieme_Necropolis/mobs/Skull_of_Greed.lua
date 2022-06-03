-----------------------------------
-- Area: The Eldieme Necropolis
--   NM: Skull of Greed
-----------------------------------
require("scripts/globals/hunts")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    xi.hunts.checkHunt(mob, player, 185)
end

return entity
