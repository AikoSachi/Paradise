-----------------------------------
-- ID: 4508
-- Item: Serving of Royal Jelly
-- Food Effect: 3 Hrs, All Races
-----------------------------------
-- MP Recovery while healing 3
-----------------------------------
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------
local item_object = {}

item_object.onItemCheck = function(target)
    local result = 0
    if target:hasStatusEffect(xi.effect.FOOD) or target:hasStatusEffect(xi.effect.FIELD_SUPPORT_FOOD) then
        result = xi.msg.basic.IS_FULL
    end
    return result
end

item_object.onItemUse = function(target)
    target:addStatusEffect(xi.effect.FOOD, 0, 0, 10800, 4508)
end

item_object.onEffectGain = function(target, effect)
    target:addMod(xi.mod.MPHEAL, 3)
end

item_object.onEffectLose = function(target, effect)
    target:delMod(xi.mod.MPHEAL, 3)
end

return item_object
