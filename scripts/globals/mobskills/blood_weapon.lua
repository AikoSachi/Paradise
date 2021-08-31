-----------------------------------
-- Blood Weapon
-----------------------------------
require("scripts/globals/monstertpmoves")
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------
local mobskill_object = {}

mobskill_object.onMobSkillCheck = function(target, mob, skill)
    return 0
end

mobskill_object.onMobWeaponSkill = function(target, mob, skill)
    MobBuffMove(mob, xi.effect.BLOOD_WEAPON, 1, 0, 30)

    skill:setMsg(xi.msg.basic.USES)

    return xi.effect.BLOOD_WEAPON
end

return mobskill_object
