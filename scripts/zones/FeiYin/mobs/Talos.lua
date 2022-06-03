-----------------------------------
-- Area: FeiYin
--  Mob: Talos
-----------------------------------
require("scripts/globals/regimes")
require("scripts/globals/keyitems")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)

    xi.regime.checkRegime(player, mob, 713, 2, xi.regime.type.GROUNDS)
    -- Curses, Foiled A-Golem!?
    if (player:hasKeyItem(xi.ki.SHANTOTTOS_NEW_SPELL)) then
        player:delKeyItem(xi.ki.SHANTOTTOS_NEW_SPELL)
        player:addKeyItem(xi.ki.SHANTOTTOS_EX_SPELL)
    end

end

return entity
