-----------------------------------
-- Area: Den_of_Rancor
--  NPC: HomePoint#2
-- !pos 182 34 -62 160
-----------------------------------
require("scripts/globals/homepoint")
-----------------------------------
local entity = {}

local hpEvent = 8701
local hpIndex = 93

entity.onTrigger = function(player, npc)
    xi.homepoint.onTrigger(player, hpEvent, hpIndex)
end

entity.onEventUpdate = function(player, csid, option)
    xi.homepoint.onEventUpdate(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
    xi.homepoint.onEventFinish(player, csid, option, hpEvent)
end

return entity
