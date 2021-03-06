-----------------------------------
-- Aerial Collision
-- Description: Cone Attack damage and Defense Down, strips Utsusemi (xi.mobskills.shadowBehavior.WIPE_SHADOWS)
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
    local typeEffect = xi.effect.DEFENSE_DOWN
    local numhits = 1
    local accmod = 1
    local dmgmod = 1
    local info = xi.mobskills.mobPhysicalMove(mob, target, skill, numhits, accmod, dmgmod, xi.mobskills.magicalTpBonus.NO_EFFECT)
    local dmg = xi.mobskills.mobFinalAdjustments(info.dmg, mob, skill, target, xi.attackType.PHYSICAL, xi.damageType.NONE, xi.mobskills.shadowBehavior.WIPE_SHADOWS)

    xi.mobskills.mobPhysicalStatusEffectMove(mob, target, skill, typeEffect, 10, 0, 30)

    target:takeDamage(dmg, mob, xi.attackType.PHYSICAL, xi.damageType.NONE)
    return dmg
end

return mobskill_object
