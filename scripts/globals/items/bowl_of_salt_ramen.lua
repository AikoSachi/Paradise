-----------------------------------
-- ID: 6462
-- Item: bowl_of_salt_ramen
-- Food Effect: 30Min, All Races
-----------------------------------
-- DEX +5
-- VIT +5
-- AGI +5
-- Accuracy +5% (cap 90)
-- Ranged Accuracy +5% (cap 90)
-- Evasion +5% (cap 90)
-- Resist Slow +10
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
    target:addStatusEffect(xi.effect.FOOD, 0, 0, 1800, 6462)
end

item_object.onEffectGain = function(target, effect)
    target:addMod(xi.mod.DEX, 5)
    target:addMod(xi.mod.VIT, 5)
    target:addMod(xi.mod.AGI, 5)
    target:addMod(xi.mod.FOOD_ACCP, 5)
    target:addMod(xi.mod.FOOD_ACC_CAP, 90)
    target:addMod(xi.mod.FOOD_RACCP, 5)
    target:addMod(xi.mod.FOOD_RACC_CAP, 90)
    -- target:addMod(xi.mod.FOOD_EVAP, 5)
    -- target:addMod(xi.mod.FOOD_EVA_CAP, 90)
    target:addMod(xi.mod.SLOWRES, 10)
end

item_object.onEffectLose = function(target, effect)
    target:delMod(xi.mod.DEX, 5)
    target:delMod(xi.mod.VIT, 5)
    target:delMod(xi.mod.AGI, 5)
    target:delMod(xi.mod.FOOD_ACCP, 5)
    target:delMod(xi.mod.FOOD_ACC_CAP, 90)
    target:delMod(xi.mod.FOOD_RACCP, 5)
    target:delMod(xi.mod.FOOD_RACC_CAP, 90)
    -- target:delMod(xi.mod.FOOD_EVAP, 5)
    -- target:delMod(xi.mod.FOOD_EVA_CAP, 90)
    target:delMod(xi.mod.SLOWRES, 10)
end

return item_object
