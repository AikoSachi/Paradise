-----------------------------------
-- Area: Al'Taieu
--  Mob: Om'phuabo
-----------------------------------
require("scripts/globals/missions")
require("scripts/globals/status")
mixins = {require("scripts/mixins/families/phuabo")}
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
end

return entity
