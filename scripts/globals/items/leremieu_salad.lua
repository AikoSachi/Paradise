-----------------------------------
-- ID: 5185
-- Item: leremieu_salad
-- Food Effect: 240Min, All Races
-----------------------------------
-- Health 20
-- Magic 20
-- Dexterity 4
-- Agility 4
-- Vitality 6
-- Charisma 4
-- Defense % 25
-- Defense Cap 160
-----------------------------------
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------
local item_object = {}

item_object.onItemCheck = function(target)
    local result = 0
    if target:hasStatusEffect(xi.effect.FOOD) or target:hasStatusEffect(xi.effect.FIELD_SUPPORT_FOOD) then
        result = xi.msg.basic.IS_FULL
    end
    return result
end

item_object.onItemUse = function(target)
    target:addStatusEffect(xi.effect.FOOD, 0, 0, 14400, 5185)
end

item_object.onEffectGain = function(target, effect)
    target:addMod(xi.mod.HP, 20)
    target:addMod(xi.mod.MP, 20)
    target:addMod(xi.mod.DEX, 4)
    target:addMod(xi.mod.AGI, 4)
    target:addMod(xi.mod.VIT, 6)
    target:addMod(xi.mod.CHR, 4)
    target:addMod(xi.mod.FOOD_DEFP, 25)
    target:addMod(xi.mod.FOOD_DEF_CAP, 160)
end

item_object.onEffectLose = function(target, effect)
    target:delMod(xi.mod.HP, 20)
    target:delMod(xi.mod.MP, 20)
    target:delMod(xi.mod.DEX, 4)
    target:delMod(xi.mod.AGI, 4)
    target:delMod(xi.mod.VIT, 6)
    target:delMod(xi.mod.CHR, 4)
    target:delMod(xi.mod.FOOD_DEFP, 25)
    target:delMod(xi.mod.FOOD_DEF_CAP, 160)
end

return item_object
