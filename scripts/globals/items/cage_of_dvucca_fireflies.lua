-----------------------------------
-- ID: 5346
-- Dvucca Fireflies
-- Transports the user to Dvucca Isle Staging Point
-----------------------------------
require("scripts/globals/teleports")
require("scripts/globals/status")
require("scripts/globals/zone")
-----------------------------------
local item_object = {}

item_object.onItemCheck = function(target)
    if target:getZoneID() == xi.zone.PERIQIA then
        return 0
    end
    return 56
end

item_object.onItemUse = function(target)
    target:addStatusEffectEx(xi.effect.TELEPORT, 0, xi.teleport.id.DVUCCA, 0, 1)
end

return item_object
