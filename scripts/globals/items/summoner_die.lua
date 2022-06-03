-----------------------------------
-- ID: 5191
-- Summoner Die
-- Teaches the job ability Evoker's Roll
-----------------------------------
local item_object = {}

item_object.onItemCheck = function(target)
    return target:canLearnAbility(xi.jobAbility.EVOKERS_ROLL)
end

item_object.onItemUse = function(target)
    target:addLearnedAbility(xi.jobAbility.EVOKERS_ROLL)
end

return item_object
