-----------------------------------
-- Area: Wajaom Woodlands
--   NM: Gharial
-----------------------------------
require("scripts/globals/hunts")
require("scripts/globals/status")
-----------------------------------
local entity = {}

entity.onMobInitialize = function(mob)
    mob:setMod(xi.mod.DOUBLE_ATTACK, 50)
    mob:setMod(xi.mod.MOVE, 12)
end

entity.onMobDeath = function(mob, player, isKiller)
    xi.hunts.checkHunt(mob, player, 450)
end

entity.onMobDespawn = function(mob)
    mob:setRespawnTime(7200 + math.random(0, 600)) -- 2 hours, then 10 minute window
end

return entity
