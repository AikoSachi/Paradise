-----------------------------------
-- Area: Fort Karugo-Narugo [S]
--   NM: Emela-ntouka
-----------------------------------
require("scripts/globals/hunts")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    xi.hunts.checkHunt(mob, player, 521)
end

return entity
