-----------------------------------
-- Ability: Assault
-- Orders the avatar to attack.
-- Obtained: Summoner Level 1
-- Recast Time: 10 sec
-----------------------------------
require("scripts/settings/main")
require("scripts/globals/status")
-----------------------------------
local ability_object = {}

ability_object.onAbilityCheck = function(player, target, ability)
    return 0, 0
end

ability_object.onUseAbility = function(player, target, ability)
    player:petAttack(target)
end

return ability_object
