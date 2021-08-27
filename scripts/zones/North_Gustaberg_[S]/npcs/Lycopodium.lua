-----------------------------------
-- Area: North Gustaberg [S]
--  NPC: Lycopodium
-- !pos -275.953 12.333 262.368 88
-----------------------------------
local ID = require("scripts/zones/Garlaige_Citadel_[S]/IDs")
require("scripts/globals/npc_util")
require("scripts/globals/utils")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    player:messageSpecial(ID.text.LYCOPODIUM_ENTRANCED)

    if not utils.mask.getBit(player:getCharVar("LycopodiumTeleport_Mask"), 2) then
        player:startEvent(113)
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
    if csid == 113 then
        player:setCharVar("LycopodiumTeleport_Mask", utils.mask.setBit(player:getCharVar("LycopodiumTeleport_Mask"), 2, true))
    end
end

return entity
