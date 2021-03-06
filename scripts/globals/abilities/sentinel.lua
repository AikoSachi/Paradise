-----------------------------------
-- Ability: Sentinel
-- Reduces physical damage taken and increases enmity.
-- Obtained: Paladin Level 30
-- Recast Time: 5:00
-- Duration: 0:30
-----------------------------------
require("scripts/globals/status")
-----------------------------------
local ability_object = {}

ability_object.onAbilityCheck = function(player, target, ability)
    return 0, 0
end

ability_object.onUseAbility = function(player, target, ability)
   -- Whether feet have to be equipped before using ability, or if they can be swapped in
   -- is disputed.  Source used: http://wiki.bluegartr.com/bg/Sentinel
    local power = 90 + player:getMod(xi.mod.SENTINEL_EFFECT)

    local guardian = player:getMerit(xi.merit.GUARDIAN)

   -- Sent as positive power because UINTs, man.
   player:addStatusEffect(xi.effect.SENTINEL, power*100, 3, 30, 0, guardian)

end

return ability_object
