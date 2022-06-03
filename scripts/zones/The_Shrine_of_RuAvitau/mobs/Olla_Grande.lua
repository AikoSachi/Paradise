-----------------------------------
-- Area: The Shrine of Ru'Avitau
--  Mob: Olla Grande
-----------------------------------
local ID = require("scripts/zones/The_Shrine_of_RuAvitau/IDs")
require("scripts/settings/main")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
end

entity.onMobDespawn = function(mob)
    GetNPCByID(ID.npc.OLLAS_QM):updateNPCHideTime(xi.settings.FORCE_SPAWN_QM_RESET_TIME)
end

return entity
