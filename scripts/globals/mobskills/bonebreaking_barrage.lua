-----------------------------------
-- Bonebreaking Barrage
-- Deals damage to a single target. Additional effect: Gravity, Max HP Down (-50%)
-----------------------------------
require("scripts/globals/mobskills")
require("scripts/settings/main")
require("scripts/globals/status")
-----------------------------------
local mobskill_object = {}

mobskill_object.onMobSkillCheck = function(target,mob,skill)
    return 0
end

mobskill_object.onMobWeaponSkill = function(target, mob, skill)
    local numhits = 1
    local accmod = 1
    local dmgmod = 2.0
    local info = xi.mobskills.mobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,xi.mobskills.magicalTpBonus.NO_EFFECT)
    local dmg = xi.mobskills.mobFinalAdjustments(info.dmg,mob,skill,target, xi.attackType.PHYSICAL, xi.damageType.BLUNT,info.hitslanded)

    xi.mobskills.mobPhysicalStatusEffectMove(mob, target, skill, xi.effect.MAX_HP_DOWN, 0, 0, 60)
    xi.mobskills.mobStatusEffectMove(mob, target, xi.effect.WEIGHT, 50, 0, 30)

    target:takeDamage(dmg, mob, xi.attackType.PHYSICAL, xi.damageType.BLUNT)

    return dmg
end

return mobskill_object
