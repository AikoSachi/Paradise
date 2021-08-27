-----------------------------------
-- ID: 22143
-- Item: Fomalhaut
-----------------------------------
require("scripts/globals/items")
require("scripts/globals/msg")
require("scripts/globals/npc_util")
-----------------------------------
local item_object = {}

item_object.onItemCheck = function(target)
    if target:getFreeSlotsCount() == 0 then
        return xi.msg.basic.ITEM_UNABLE_TO_USE
    end

    return 0
end

item_object.onItemUse = function(target)
    npcUtil.giveItem(target, { { xi.items.CHRONO_BULLET, 99 } }) -- Chrono Bullet x99
end

return item_object
