-----------------------------------
-- Area: The Eldieme Necropolis
--  Mob: Yum Kimil
-- Involved in Quest: The Requiem (BARD AF2)
-- !pos -414 8 499 195
-----------------------------------
require("scripts/settings/main")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    if (player:getCharVar("TheRequiemCS") == 3) then
        player:setCharVar("TheRequiemYumKilled", 1)
    end
end

return entity
