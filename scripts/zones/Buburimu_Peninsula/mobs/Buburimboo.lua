-----------------------------------
-- Area: Buburimu Peninsula (118)
--  Mob: Buburimboo
-----------------------------------
require("scripts/globals/hunts")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    xi.hunts.checkHunt(mob, player, 261)
end

return entity
