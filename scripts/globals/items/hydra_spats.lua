-----------------------------------
-- ID: 15681
-- Item: hydra_spats
-- Item Effect: Eva +15
-- Duration: 20 Minutes
-----------------------------------
require("scripts/globals/status")
-----------------------------------
local item_object = {}

item_object.onItemCheck = function(target)
    local effect = target:getStatusEffect(xi.effect.ENCHANTMENT)
    if effect ~= nil and effect:getSubType() == 15681 then
        target:delStatusEffect(xi.effect.ENCHANTMENT)
    end
    return 0
end

item_object.onItemUse = function(target)
    target:addStatusEffect(xi.effect.ENCHANTMENT, 0, 0, 1200, 15681)
end

item_object.onEffectGain = function(target, effect)
    target:addMod(xi.mod.EVA, 15)
end

item_object.onEffectLose = function(target, effect)
    target:delMod(xi.mod.EVA, 15)
end

return item_object
