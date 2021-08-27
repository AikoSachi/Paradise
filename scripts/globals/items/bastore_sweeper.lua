-----------------------------------
-- ID: 5473
-- Item: Bastore Sweeper
-- Food Effect: 5 Min, Mithra only
-----------------------------------
-- Dexterity -5
-- Vitality +3
-- Defense +15% Cap 50
-----------------------------------
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------
local item_object = {}

item_object.onItemCheck = function(target)
    local result = 0
    if (target:getRace() ~= xi.race.MITHRA) then
        result = xi.msg.basic.CANNOT_EAT
    end
    if (target:getMod(xi.mod.EAT_RAW_FISH) == 1) then
        result = 0
    end
    if target:hasStatusEffect(xi.effect.FOOD) or target:hasStatusEffect(xi.effect.FIELD_SUPPORT_FOOD) then
        result = xi.msg.basic.IS_FULL
    end
    return result
end

item_object.onItemUse = function(target)
    target:addStatusEffect(xi.effect.FOOD, 0, 0, 300, 5473)
end

item_object.onEffectGain = function(target, effect)
    target:addMod(xi.mod.DEX, -5)
    target:addMod(xi.mod.VIT, 3)
    target:addMod(xi.mod.FOOD_DEFP, 15)
    target:addMod(xi.mod.FOOD_DEF_CAP, 50)
end

item_object.onEffectLose = function(target, effect)
    target:delMod(xi.mod.DEX, -5)
    target:delMod(xi.mod.VIT, 3)
    target:delMod(xi.mod.FOOD_DEFP, 15)
    target:delMod(xi.mod.FOOD_DEF_CAP, 50)
end

return item_object
