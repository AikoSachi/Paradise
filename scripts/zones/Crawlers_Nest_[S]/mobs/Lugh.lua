-----------------------------------
-- Area: Crawlers Nest [S]
--   NM: Lugh
-----------------------------------
require("scripts/globals/hunts")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    xi.hunts.checkHunt(mob, player, 516)
end

return entity
