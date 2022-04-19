-----------------------------------
-- Spell: Dragonfoe Mambo
-- Grants evasion bonus to all members.
-----------------------------------
require("scripts/globals/spells/spell_enhancing_song")
-----------------------------------
local spell_object = {}

spell_object.onMagicCastingCheck = function(caster, target, spell)
    return 0
end

spell_object.onSpellCast = function(caster, target, spell)
    return xi.spells.spell_enhancing_song.useEnhancingSong(caster, target, spell)
end

return spell_object
