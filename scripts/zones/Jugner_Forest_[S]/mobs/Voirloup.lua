-----------------------------------
-- Area: Jugner Forest [S]
--   NM: Voirloup
-----------------------------------
require("scripts/globals/hunts")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    xi.hunts.checkHunt(mob, player, 486)
end

return entity
