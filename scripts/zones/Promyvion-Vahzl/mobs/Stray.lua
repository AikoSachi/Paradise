-----------------------------------
-- Area: Promyvion-Vahzl
--   NM: Stray
-----------------------------------
require("scripts/globals/promyvion")
-----------------------------------
local entity = {}

entity.onMobSpawn = function(mob)
    xi.promyvion.strayOnSpawn(mob)
end

entity.onMobDeath = function(mob, player, isKiller)
end

return entity
