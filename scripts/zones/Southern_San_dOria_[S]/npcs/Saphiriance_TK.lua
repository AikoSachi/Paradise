-----------------------------------
-- Area: Southern SandOria [S]
--  NPC: Saphiriance T.K
-- !pos 113 1 -40 80
-- Retrace NPC
-----------------------------------
require("scripts/globals/campaign")
require("scripts/globals/teleports")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    local allegiance =  player:getCampaignAllegiance()
    local alliedNotes = player:getCurrency("allied_notes")

    if allegiance ~= 0 then
        player:startEvent(454, allegiance, 0, alliedNotes, 0, 0, 0, 0)
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
    if csid == 454 then
        player:addStatusEffectEx(xi.effect.TELEPORT, 0, xi.teleport.id.RETRACE, 0, 2)
        player:delCurrency("allied_notes", 30)
    end
end

return entity
