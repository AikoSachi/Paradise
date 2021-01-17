-----------------------------------------
-- ID: 16471
-- Item: Blind knife
-- Additional Effect: Blindness
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/magic")
require("scripts/globals/msg")
-----------------------------------
local item_object = {}

item_object.onAdditionalEffect = function(player, target, damage)
    local chance = 10

    if (math.random(0, 99) >= chance or applyResistanceAddEffect(player, target, tpz.magic.ele.DARK, 0) <= 0.5) then
        return 0, 0, 0
    else
        target:addStatusEffect(tpz.effect.BLINDNESS, 10, 0, 30)
        return tpz.subEffect.BLIND, tpz.msg.basic.ADD_EFFECT_STATUS, tpz.effect.BLINDNESS
    end
end

return item_object
