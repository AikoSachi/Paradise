-----------------------------------
-- ID: 17797
-- Item: Seito
-- Additional Effect: Silence
-- TODO: Enchantment: Ensilence
-----------------------------------
require("scripts/globals/status")
require("scripts/globals/magic")
require("scripts/globals/msg")
-----------------------------------
local item_object = {}

item_object.onAdditionalEffect = function(player, target, damage)
    local chance = 10

    if (math.random(0, 99) >= chance or applyResistanceAddEffect(player, target, xi.magic.ele.WIND, 0) <= 0.5) then
        return 0, 0, 0
    else
        if (not target:hasStatusEffect(xi.effect.SILENCE)) then
            target:addStatusEffect(xi.effect.SILENCE, 1, 0, 60)
        end
        return xi.subEffect.SILENCE, xi.msg.basic.ADD_EFFECT_STATUS, xi.effect.SILENCE
    end
end

item_object.onItemCheck = function(target)
end

item_object.onItemUse = function(target)
end

return item_object
