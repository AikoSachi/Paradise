-----------------------------------
--  Transfusion
--
--  Description: Steals HP from players within range.
--  Type: Magical
--  Utsusemi/Blink absorb: Ignores shadows
--  Range: Unknown radial
--  Notes:
-----------------------------------
require("scripts/globals/monstertpmoves")
require("scripts/settings/main")
require("scripts/globals/status")
-----------------------------------
local mobskill_object = {}

mobskill_object.onMobSkillCheck = function(target, mob, skill)
    return 0
end

mobskill_object.onMobWeaponSkill = function(target, mob, skill)

    local dmgmod = 1

    local info = MobMagicalMove(mob, target, skill, mob:getWeaponDmg()*3, xi.magic.ele.DARK, dmgmod, TP_MAB_BONUS, 1)
    local dmg = MobFinalAdjustments(info.dmg, mob, skill, target, xi.attackType.MAGICAL, xi.damageType.DARK, MOBPARAM_IGNORE_SHADOWS)

    skill:setMsg(MobDrainMove(mob, target, MOBDRAIN_HP, dmg, xi.attackType.MAGICAL, xi.damageType.DARK))

    return dmg
end

return mobskill_object
