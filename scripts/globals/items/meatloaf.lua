-----------------------------------
-- ID: 5689
-- Item: Meatloaf
-- Food Effect: 3 Hrs, All Races
-----------------------------------
-- Strength 6
-- Agility 2
-- Intelligence -3
-- Attack 18% Cap 90
-----------------------------------
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------
local item_object = {}

item_object.onItemCheck = function(target)
    local result = 0
    if (target:hasStatusEffect(xi.effect.FOOD)) then
        result = xi.msg.basic.IS_FULL
    end
    return result
end

item_object.onItemUse = function(target)
    target:addStatusEffect(xi.effect.FOOD, 0, 0, 10800, 5689)
end

item_object.onEffectGain = function(target, effect)
    target:addMod(xi.mod.STR, 6)
    target:addMod(xi.mod.AGI, 2)
    target:addMod(xi.mod.INT, -3)
    target:addMod(xi.mod.FOOD_ATTP, 18)
    target:addMod(xi.mod.FOOD_ATT_CAP, 90)
end

item_object.onEffectLose = function(target, effect)
    target:delMod(xi.mod.STR, 6)
    target:delMod(xi.mod.AGI, 2)
    target:delMod(xi.mod.INT, -3)
    target:delMod(xi.mod.FOOD_ATTP, 18)
    target:delMod(xi.mod.FOOD_ATT_CAP, 90)
end

return item_object
