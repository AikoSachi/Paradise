-----------------------------------
-- ID: 18241
-- Item: Vial of Refresh Musk
-- Item Effect: 60 seconds
-- Duration: 30 Seconds
-----------------------------------
require("scripts/globals/status")
-----------------------------------
local item_object = {}

item_object.onItemCheck = function(target)
    local effect = target:getStatusEffect(xi.effect.ENCHANTMENT)
    if effect ~= nil and effect:getSubType() == 18241 then
        target:delStatusEffect(xi.effect.ENCHANTMENT)
    end
    return 0
end

item_object.onItemUse = function(target)
    target:addStatusEffectEx(xi.effect.ENCHANTMENT, xi.effect.REFRESH, 0, 0, 30, 18241)
end

item_object.onEffectGain = function(target, effect)
    target:addMod(xi.mod.REFRESH, 3)
end

item_object.onEffectLose = function(target, effect)
    target:delMod(xi.mod.REFRESH, 3)
end

return item_object
