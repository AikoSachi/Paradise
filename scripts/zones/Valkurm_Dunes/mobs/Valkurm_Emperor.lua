-----------------------------------
-- Area: Valkurm Dunes
--   NM: Valkurm Emperor
-----------------------------------
require("scripts/globals/hunts")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    xi.hunts.checkHunt(mob, player, 209)
end

return entity
