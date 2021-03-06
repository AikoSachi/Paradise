-----------------------------------
-- Area: Northern San d'Oria
--  NPC: Heruze-Moruze
-- Involved in Mission: 2-3 Windurst
-- !pos -56 -3 36 231
-----------------------------------
require("scripts/globals/zone")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    local pNation = player:getNation()

    if pNation == xi.nation.WINDURST then
        player:startEvent(554)
    elseif pNation == xi.nation.BASTOK then
        player:startEvent(578)
    elseif pNation == xi.nation.SANDORIA then
        player:startEvent(577)
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity
