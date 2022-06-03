-----------------------------------
-- Area: Mamook
--  NPC: Survival Guide
-----------------------------------
require("scripts/globals/survival_guide")
-----------------------------------
local entity = {}

entity.onTrigger = function(player, targetNpc)
    xi.survivalGuide.onTrigger(player)
end

entity.onEventUpdate = function(player, csid, option)
    xi.survivalGuide.onEventUpdate(player, csid, option)
end

entity.onEventFinish = function(player, csid, option, targetNpc)
    xi.survivalGuide.onEventFinish(player, csid, option)
end

return entity
