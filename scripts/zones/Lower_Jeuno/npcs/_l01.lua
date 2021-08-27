-----------------------------------
-- Area: Lower Jeuno
--  NPC: Streetlamp
-- Involved in Quests: Community Service
-- !pos -108 0 -158 245
-----------------------------------
local lowerJeunoGlobal = require("scripts/zones/Lower_Jeuno/globals")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    lowerJeunoGlobal.lampTrigger(player, npc)
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
    lowerJeunoGlobal.lampEventFinish(player, csid, option, 1)
end

return entity
