-----------------------------------
-- ID: 5735
-- Ctn. Purse (Alx.)
-- Breaks up a Cotton Purse
-----------------------------------
require("scripts/globals/msg")
-----------------------------------
local item_object = {}

item_object.onItemCheck = function(target)
    local result = 0
    if target:getFreeSlotsCount() == 0 then
        result = xi.msg.basic.ITEM_NO_USE_INVENTORY
    end
    return result
end

item_object.onItemUse = function(target)
    target:addItem(2488, math.random(5, 20))
end

return item_object
