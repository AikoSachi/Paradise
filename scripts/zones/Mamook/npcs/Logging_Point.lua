-----------------------------------
-- Area: Mamook
--  NPC: Logging Point
-----------------------------------
require("scripts/globals/helm")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
    xi.helm.onTrade(player, npc, trade, xi.helm.type.LOGGING, 215)
end

entity.onTrigger = function(player, npc)
    xi.helm.onTrigger(player, xi.helm.type.LOGGING)
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity
