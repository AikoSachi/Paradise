-----------------------------------
-- ID: 4130
-- Item: Ether +2
-- Item Effect: Restores 30 MP
-----------------------------------
require("scripts/settings/main")
require("scripts/globals/msg")
-----------------------------------
local item_object = {}

item_object.onItemCheck = function(target)
    if (target:getMP() == target:getMaxMP()) then
        return xi.msg.basic.ITEM_UNABLE_TO_USE
    end
    return 0
end

item_object.onItemUse = function(target)
    target:messageBasic(xi.msg.basic.RECOVERS_MP, 0, target:addMP(30*xi.settings.ITEM_POWER))
end

return item_object
