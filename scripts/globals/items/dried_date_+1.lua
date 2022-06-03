-----------------------------------
-- ID: 5574
-- Item: dried_date_+1
-- Food Effect: 60Min, All Races
-----------------------------------
-- Health 12
-- Magic 22
-- Agility -1
-- Intelligence 4
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
    target:addStatusEffect(xi.effect.FOOD, 0, 0, 3600, 5574)
end

item_object.onEffectGain = function(target, effect)
    target:addMod(xi.mod.HP, 12)
    target:addMod(xi.mod.MP, 22)
    target:addMod(xi.mod.AGI, -1)
    target:addMod(xi.mod.INT, 4)
end

item_object.onEffectLose = function(target, effect)
    target:delMod(xi.mod.HP, 12)
    target:delMod(xi.mod.MP, 22)
    target:delMod(xi.mod.AGI, -1)
    target:delMod(xi.mod.INT, 4)
end

return item_object
