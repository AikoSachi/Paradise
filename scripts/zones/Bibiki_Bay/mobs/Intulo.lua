-----------------------------------
-- Area: Bibiki Bay
--   NM: Intulo
-----------------------------------
require("scripts/globals/hunts")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    xi.hunts.checkHunt(mob, player, 265)
end

return entity
