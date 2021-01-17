-----------------------------------------
-- ID: 18241
-- Item: Vial of Refresh Musk
-- Item Effect: 60 seconds
-- Duration: 30 Seconds
-----------------------------------------
require("scripts/globals/status")
-----------------------------------------
local item_object = {}

item_object.onItemCheck = function(target)
    local effect = target:getStatusEffect(tpz.effect.ENCHANTMENT)
    if effect ~= nil and effect:getSubType() == 18241 then
        target:delStatusEffect(tpz.effect.ENCHANTMENT)
    end
    return 0
end

item_object.onItemUse = function(target)
    target:addStatusEffectEx(tpz.effect.ENCHANTMENT, tpz.effect.REFRESH, 0, 0, 30, 18241)
end

item_object.onEffectGain = function(target, effect)
    target:addMod(tpz.mod.REFRESH, 3)
end

item_object.onEffectLose = function(target, effect)
    target:delMod(tpz.mod.REFRESH, 3)
end

return item_object
