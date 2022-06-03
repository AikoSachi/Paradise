-----------------------------------
-- ID: 15610
-- Item: sturdy_trousers
-- Item Effect: HP +10
-- Duration: 30 Minutes
-----------------------------------
require("scripts/globals/status")
-----------------------------------
local item_object = {}

item_object.onItemCheck = function(target)
    local effect = target:getStatusEffect(xi.effect.ENCHANTMENT)
    if effect ~= nil and effect:getSubType() == 15610 then
        target:delStatusEffect(xi.effect.ENCHANTMENT)
    end
    return 0
end

item_object.onItemUse = function(target)
    target:addStatusEffect(xi.effect.ENCHANTMENT, 0, 0, 1800, 15610)
end

item_object.onEffectGain = function(target, effect)
    target:addMod(xi.mod.HP, 10)
end

item_object.onEffectLose = function(target, effect)
    target:delMod(xi.mod.HP, 10)
end

return item_object
