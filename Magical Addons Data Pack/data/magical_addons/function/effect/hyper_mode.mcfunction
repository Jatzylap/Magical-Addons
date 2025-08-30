# effect:hyper_mode
# called by : player:tick

execute if entity @s[scores={maddons.mana=..201}] run return run function magical_addons:effect/clear_hyper_mode
effect give @s night_vision 1 0
attribute @s movement_speed modifier add magical_addons:hyper_mode 2 add_multiplied_total
scoreboard players remove @s maddons.mana 1
function magical_addons:player/mana_meter