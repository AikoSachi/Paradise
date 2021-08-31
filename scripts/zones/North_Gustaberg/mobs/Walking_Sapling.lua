-----------------------------------
-- Area: North Gustaberg
--  Mob: Walking Sapling
-- Note: Place Holder For Maighdean Uaine
-----------------------------------
local ID = require("scripts/zones/North_Gustaberg/IDs")
require("scripts/globals/regimes")
require("scripts/globals/mobs")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    xi.regime.checkRegime(player, mob, 18, 2, xi.regime.type.FIELDS)
end

entity.onMobDespawn = function(mob)
    xi.mob.phOnDespawn(mob, ID.mob.MAIGHDEAN_UAINE_PH, 5, math.random(900, 10800)) -- 15 to 180 minutes
end

return entity
