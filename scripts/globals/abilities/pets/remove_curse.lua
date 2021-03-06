-----------------------------------
-- Remove Curse
-----------------------------------
require("scripts/settings/main")
require("scripts/globals/status")

-----------------------------------
local ability_object = {}

ability_object.onAbilityCheck = function(player, target, ability)
    return 0, 0
end

ability_object.onUseAbility = function(pet, target, skill, action)
    local effect
    if (target:delStatusEffect(xi.effect.CURSE_I)) then
        skill:setMsg(xi.msg.basic.JA_REMOVE_EFFECT)
        effect = xi.effect.CURSE_I
    elseif (target:delStatusEffect(xi.effect.DOOM)) then
        skill:setMsg(xi.msg.basic.JA_REMOVE_EFFECT)
        effect = xi.effect.DOOM
    else
        skill:setMsg(xi.msg.basic.JA_NO_EFFECT)
    end

    return effect
end

return ability_object
