-----------------------------------
-- Area: Rolanberry Fields [S]
--   NM: Dark Ixion
-----------------------------------
require("scripts/globals/titles")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    player:addTitle(xi.title.IXION_HORNBREAKER)
end

return entity
