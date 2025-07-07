# block:wizarding_table/disengage
# called by: block:wizarding_table/gui/reset

playsound magical_addons:item.orb.break block @a ~ ~ ~ 1 .6
playsound magical_addons:block.sparkstone.chime block @a ~ ~ ~ 1 .6
particle firework ~.5 ~ ~ 0 0 0 .1 2
particle firework ~-.5 ~ ~ 0 0 0 .1 2
particle firework ~ ~ ~.5 0 0 0 .1 2
particle firework ~ ~ ~-.5 0 0 0 .1 2
scoreboard players reset @s maddons.damage
scoreboard players reset @s maddons.wizarding_table_page
fill ~1 ~ ~ ~-1 ~ ~ air replace light[level=9]
fill ~ ~ ~1 ~ ~ ~-1 air replace light[level=9]
fill ~ ~-1 ~ ~ ~1 ~ air replace light[level=9]
tag @s remove on
tag @s add off
data remove entity @s brightness
data modify entity @s item.components."minecraft:custom_model_data".flags[0] set value 0
data modify block ~ ~ ~ components."minecraft:custom_model_data".flags[0] set value 0
function magical_addons:dev/unregister_entity with block ~ ~ ~ components."minecraft:custom_data"
function magical_addons:block/custom/wizarding_table/set_state with block ~ ~ ~