# effect:hyper_mode
# called by : player:loop

execute if entity @s[scores={maddons.mana=..201}] run return run function magical_addons:effect/clear_hyper_mode
playsound block.amethyst_block.break player @a ~ ~ ~ 1 1.1
effect give @s glowing 1 0
effect give @s night_vision 1 0
kill @e[type=!#magical_addons:invulnerable,tag=!maddons.invul,distance=.001..1]
attribute @s movement_speed modifier add magical_addons:hyper_mode 2 add_multiplied_total
scoreboard players remove @s maddons.mana 1
function magical_addons:player/event/mana_meter