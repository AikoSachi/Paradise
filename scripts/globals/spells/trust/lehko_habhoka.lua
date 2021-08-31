-----------------------------------
-- Trust: Lehko Habhoka
-----------------------------------
require("scripts/globals/trust")
-----------------------------------
local spell_object = {}

spell_object.onMagicCastingCheck = function(caster, target, spell)
    return xi.trust.canCast(caster, spell)
end

spell_object.onSpellCast = function(caster, target, spell)
    return xi.trust.spawn(caster, spell)
end

spell_object.onMobSpawn = function(mob)
    xi.trust.teamworkMessage(mob, {
        [xi.magic.spell.ROMAA_MIHGO] = xi.trust.message_offset.TEAMWORK_1,
        [xi.magic.spell.ROBEL_AKBEL] = xi.trust.message_offset.TEAMWORK_2,
    })

    mob:addSimpleGambit(ai.t.TARGET, ai.c.MB_AVAILABLE, 0, ai.r.MA, ai.s.MB_ELEMENT, xi.magic.spellFamily.NONE)

    mob:addSimpleGambit(ai.t.TARGET, ai.c.NOT_SC_AVAILABLE, 0, ai.r.MA, ai.s.BEST_AGAINST_TARGET, 0, 60)

    ---- Uses Ranged Attacks very frequently. Always runs to stay in melee range. [Verification Needed]
    ---- Try and ranged attack every 10s
    mob:addSimpleGambit(ai.t.TARGET, ai.c.ALWAYS, 0, ai.r.RATTACK, 0, 0, 10)

    mob:setTrustTPSkillSettings(ai.tp.ASAP, ai.s.RANDOM)

    mob:addListener("WEAPONSKILL_USE", "LEHKO_WEAPONSKILL_USE", function(mobArg, target, wsid, tp, action)
        if wsid == 3231 then -- Debonair Rush
            --  Here's betting your bark is worrrse than your bite!
            xi.trust.message(mobArg, xi.trust.message_offset.SPECIAL_MOVE_1)
        end
    end)

    -- TODO: Maximum MP has been increased.
    -- In lieu of being able to boost his MP, we can
    -- load him up with CONSERVE_MP
    mob:addMod(xi.mod.CONSERVE_MP, 10)

    -- The attribute "Enhanced Magic Accuracy" has been added.
    local power = mob:getMainLvl() / 10
    mob:addMod(xi.mod.MACC, power)
end

spell_object.onMobDespawn = function(mob)
    xi.trust.message(mob, xi.trust.message_offset.DESPAWN)
end

spell_object.onMobDeath = function(mob)
    xi.trust.message(mob, xi.trust.message_offset.DEATH)
end

return spell_object
