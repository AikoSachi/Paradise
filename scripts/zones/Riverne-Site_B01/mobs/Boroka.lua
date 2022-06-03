-----------------------------------
-- Area: Riverne - Site B01
--   NM: Boroka
-----------------------------------
require("scripts/globals/titles")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    player:addTitle(xi.title.BOROKA_BELEAGUERER)
    mob:setRespawnTime(math.random(75600, 86400)) -- 21-24 hour respawn
end

return entity
