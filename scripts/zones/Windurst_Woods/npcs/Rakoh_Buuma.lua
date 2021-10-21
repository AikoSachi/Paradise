-----------------------------------
-- Area: Windurst Woods
--  NPC: Rakoh Buuma
-- Starts Windurst Missions
-- !pos 106 -5 -23 241
-----------------------------------
local ID = require("scripts/zones/Windurst_Woods/IDs")
require("scripts/globals/keyitems")
require("scripts/globals/missions")
require("scripts/globals/titles")
require("scripts/globals/zone")
-----------------------------------
local entity = {}

entity.onTrigger = function(player, npc)
    if player:getNation() ~= xi.nation.WINDURST then
        player:startEvent(105) -- for other nation
    else
        local currentMission = player:getCurrentMission(WINDURST)

        if (currentMission ~= xi.mission.id.windurst.NONE) then
            player:startEvent(112) -- Have mission already activated
        elseif player:hasKeyItem(xi.ki.MESSAGE_TO_JEUNO_WINDURST) then
            player:startEvent(197)
        elseif player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.MOON_READING) then
            player:startEvent(632)
        else
            local param3
            local flagMission, repeatMission = getMissionMask(player)
            -- NPC dialog changes when starting 3-2 according to whether it's the first time or being repeated
            if (player:hasCompletedMission(xi.mission.log_id.WINDURST, xi.mission.id.windurst.WRITTEN_IN_THE_STARS)) then
                param3 = 1
            else
                param3 = 0
            end
            player:startEvent(114, flagMission, 0, param3, 0, xi.ki.STAR_CRESTED_SUMMONS_1, repeatMission)
        end
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
    if csid ~= 121 or csid ~= 132 or csid ~= 149 then
        finishMissionTimeline(player, 1, csid, option)
    end
    if csid == 114 and (option == 12 or option == 15) then
        player:addKeyItem(xi.ki.STAR_CRESTED_SUMMONS_1)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, xi.ki.STAR_CRESTED_SUMMONS_1)
    elseif csid == 632 then
        player:setCharVar("WWoodsRTenText", 1)
    end
end

return entity
