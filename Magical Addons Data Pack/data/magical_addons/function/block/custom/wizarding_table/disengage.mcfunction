# block:wizarding_table/disengage
# called by: block:wizarding_table/gui/main/consume

playsound magical_addons:item.orb.break block @a ~ ~ ~ 1 .6
playsound magical_addons:block.sparkstone.chime block @a ~ ~ ~ 1 .6
particle firework ~.5 ~ ~ 0 0 0 .1 2
particle firework ~-.5 ~ ~ 0 0 0 .1 2
particle firework ~ ~ ~.5 0 0 0 .1 2
particle firework ~ ~ ~-.5 0 0 0 .1 2
scoreboard players reset @s maddons.damage
scoreboard players reset @s maddons.wizarding_table_page
scoreboard players operation @s maddons.idamage = @s maddons.max_damage
fill ~1 ~ ~ ~-1 ~ ~ air replace light[level=9]
fill ~ ~ ~1 ~ ~ ~-1 air replace light[level=9]
fill ~ ~-1 ~ ~ ~1 ~ air replace light[level=9]
tag @s remove on
tag @s add off
data remove entity @s brightness
data modify entity @s item.components."minecraft:custom_model_data".flags[0] set value 0b
data modify block ~ ~ ~ components."minecraft:custom_model_data".flags[0] set value 0b
function magical_addons:dev/unregister_entity with block ~ ~ ~ components."minecraft:custom_data".magical_addons

## Drop recipe ingredients
function magical_addons:block/custom/wizarding_table/return {slot:2}
function magical_addons:block/custom/wizarding_table/return {slot:3}
function magical_addons:block/custom/wizarding_table/return {slot:4}
function magical_addons:block/custom/wizarding_table/return {slot:11}
function magical_addons:block/custom/wizarding_table/return {slot:12}
function magical_addons:block/custom/wizarding_table/return {slot:13}
function magical_addons:block/custom/wizarding_table/return {slot:20}
function magical_addons:block/custom/wizarding_table/return {slot:21}
function magical_addons:block/custom/wizarding_table/return {slot:22}

## Final state
function magical_addons:block/custom/wizarding_table/set_state with block ~ ~ ~