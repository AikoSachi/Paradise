-----------------------------------------
-- ID: 4447
-- Item: scream_fungus
-- Food Effect: 5Min, All Races
-----------------------------------------
-- Strength -4
-- Mind 2
-----------------------------------------
require("scripts/globals/status")
-----------------------------------------

function onItemCheck(target)
    local result = 0
    if target:hasStatusEffect(dsp.effect.FOOD) or target:hasStatusEffect(dsp.effect.FIELD_SUPPORT_FOOD) then
        result = 246
    end
    return result
end

function onItemUse(target)
    target:addStatusEffect(dsp.effect.FOOD,0,0,300,4447)
end

function onEffectGain(target, effect)
    target:addMod(dsp.mod.STR, -4)
    target:addMod(dsp.mod.MND, 2)
end

function onEffectLose(target, effect)
    target:delMod(dsp.mod.STR, -4)
    target:delMod(dsp.mod.MND, 2)
end
