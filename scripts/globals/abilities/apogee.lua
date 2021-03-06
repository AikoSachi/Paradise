-----------------------------------
-- Ability: Apogee
-- Increases the MP Cost of the Next Blood Pact but makes its recast timer 0
-- Obtained: Summoner Level 70
-- Recast Time: 5 Minutes
-- Duration: 1 Blood Pact or 60 seconds, whichever occurs first.
-----------------------------------
require("scripts/settings/main")
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------
local ability_object = {}

ability_object.onAbilityCheck = function(player, target, ability)
    if player:hasStatusEffect(xi.effect.APOGEE) then
        return xi.msg.basic.EFFECT_ALREADY_ACTIVE, 0
    end
    return 0, 0
end

ability_object.onUseAbility = function(player, target, ability)
    player:addStatusEffect(xi.effect.APOGEE, 1, 0, 60)

    return xi.effect.APOGEE
end

return ability_object
