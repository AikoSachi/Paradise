-----------------------------------
-- Area: Port San d'Oria
--  NPC: Moogle
-----------------------------------
require("scripts/globals/moghouse")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
    xi.moghouse.moogleTrade(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    xi.moghouse.moogleTrigger(player, npc)
end

entity.onEventUpdate = function(player, csid, option)
    xi.moghouse.moogleEventUpdate(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
    xi.moghouse.moogleEventFinish(player, csid, option)
end

return entity
