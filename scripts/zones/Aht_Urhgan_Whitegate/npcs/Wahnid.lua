-----------------------------------
-- Area: Aht Urhgan Whitegate
--  NPC: Wahnid
-- Type: Guild Merchant: Fishing Guild
-- !pos -31.720 -6.000 -94.919 50
-----------------------------------
require("scripts/settings/main")
require("scripts/globals/shop")
local ID = require("scripts/zones/Aht_Urhgan_Whitegate/IDs")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    if (player:sendGuild(60426, 1, 18, 6)) then
        player:showText(npc, ID.text.WAHNID_SHOP_DIALOG)
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity
