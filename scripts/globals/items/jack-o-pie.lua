-----------------------------------
-- ID: 5644
-- Item: jack-o-pie
-- Food Effect: 1hour, All Races
-----------------------------------
-- MP 45
-- CHR -1
-- Intelligence 4
-- hMP +1
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
    target:addStatusEffect(xi.effect.FOOD, 0, 0, 3600, 5644)
end

item_object.onEffectGain = function(target, effect)
    target:addMod(xi.mod.MP, 45)
    target:addMod(xi.mod.CHR, -1)
    target:addMod(xi.mod.INT, 4)
    target:addMod(xi.mod.MPHEAL, 1)
end

item_object.onEffectLose = function(target, effect)
    target:delMod(xi.mod.MP, 45)
    target:delMod(xi.mod.CHR, -1)
    target:delMod(xi.mod.INT, 4)
    target:delMod(xi.mod.MPHEAL, 1)
end

return item_object
