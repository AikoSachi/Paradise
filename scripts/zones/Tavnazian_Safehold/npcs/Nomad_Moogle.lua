-----------------------------------
-- Area: Tavnazian Safehold
--  NPC: Nomad Moogle
-----------------------------------
local ID = require("scripts/zones/Tavnazian_Safehold/IDs")
-----------------------------------

function onTrade(player,npc,trade)
end

function onTrigger(player,npc)
    player:showText(npc, ID.text.NOMAD_MOOGLE_DIALOG)
    player:sendMenu(1)
end

function onEventUpdate(player,csid,option)
end

function onEventFinish(player,csid,option)
end