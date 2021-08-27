-----------------------------------
-- Area: Port Windurst
--  NPC: Kumama
-- Standard Merchant NPC
-----------------------------------
local ID = require("scripts/zones/Port_Windurst/IDs")
require("scripts/globals/shop")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    local stock =
    {
        12849, 9936, 2,    -- Cotton Brais
        12977, 6633, 2,    -- Cotton Gaiters
        12848, 1899, 3,    -- Brais
        12856,  172, 3,    -- Slops
        12824,  482, 3,    -- Leather Trousers
        12864,  860, 3, -- Slacks
        12857, 2268, 3,    -- Linen Slops
        12976, 1269, 3,    -- Gaiters
        12984,  111, 3,    -- Ash Clogs
        12952,  309, 3,    -- Leather Highboots
        12992,  544, 3,    -- Solea
        12985, 1462, 3,    -- Holly Clogs
        12289,  110, 3,    -- Lauan Shield
        12290,  556, 3,    -- Maple Shield
    }

    player:showText(npc, ID.text.KUMAMA_SHOP_DIALOG)
    xi.shop.nation(player, stock, xi.nation.WINDURST)
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity
