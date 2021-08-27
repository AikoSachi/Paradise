-----------------------------------
-- ID: 5908
-- Item: Butterpear
-- Food Effect: 5Min, All Races
-----------------------------------
-- Agility +4
-- Vitality +1
-- Resist Amnesia +20
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
    target:addStatusEffect(xi.effect.FOOD, 0, 0, 300, 5908)
end

item_object.onEffectGain = function(target, effect)
    target:addMod(xi.mod.AGI, 4)
    target:addMod(xi.mod.VIT, 1)
    target:addMod(xi.mod.AMNESIARES, 20)
end

item_object.onEffectLose = function(target, effect)
    target:delMod(xi.mod.AGI, 4)
    target:delMod(xi.mod.VIT, 1)
    target:delMod(xi.mod.AMNESIARES, 20)
end

return item_object
