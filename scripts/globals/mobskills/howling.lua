-----------------------------------
-- Howling
--
-- Description: Paralyzes enemies in an area of effect.
-- Type: Enfeebling
-- Utsusemi/Blink absorb: Ignores shadows
-- Range: 10' radial
-- Notes:
-----------------------------------
require("scripts/globals/mobskills")
require("scripts/settings/main")
require("scripts/globals/status")
-----------------------------------
local mobskill_object = {}

mobskill_object.onMobSkillCheck = function(target, mob, skill)
    return 0
end

mobskill_object.onMobWeaponSkill = function(target, mob, skill)
    local typeEffect = xi.effect.PARALYSIS
    skill:setMsg(xi.mobskills.mobStatusEffectMove(mob, target, typeEffect, 20, 0, 60))

    return typeEffect
end

return mobskill_object
