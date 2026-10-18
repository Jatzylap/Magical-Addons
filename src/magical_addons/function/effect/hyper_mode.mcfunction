# effect:hyper_mode
# called by : player:tick

execute if entity @s[scores={maddons.mana=..201}] run return run function magical_addons:effect/clear_hyper_mode
scoreboard players remove @s maddons.mana 1
function magical_addons:player/mana_meter