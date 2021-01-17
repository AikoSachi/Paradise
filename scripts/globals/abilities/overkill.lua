-----------------------------------
-- Ability: Overkill
-- Description: Increases ranged attack speed and the chance of activating Double/Triple Shot.
-- Obtained: RNG Level 96
-- Recast Time: 01:00:00
-- Duration: 00:01:00
-----------------------------------
require("scripts/globals/settings")
require("scripts/globals/status")
-----------------------------------
local ability_object = {}

ability_object.onAbilityCheck = function(player, target, ability)
    return 0, 0
end

ability_object.onUseAbility = function(player, target, ability)
    player:addStatusEffect(tpz.effect.OVERKILL, 11, 1, 60)
end

return ability_object
