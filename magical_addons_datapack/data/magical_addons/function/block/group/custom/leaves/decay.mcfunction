# block:group/custom/leaves/decay
# called by: main:one_second

execute unless score @s maddons.animation matches ..18 run scoreboard players set @s maddons.animation -1
execute store result block ~ ~ ~ components."minecraft:custom_data".magical_addons.properties.path_permutation int 1 store result entity @s item.components."minecraft:custom_data".magical_addons.properties.path_permutation int 1 run scoreboard players add @s maddons.animation 1
$function magical_addons:block/custom/$(id)/decay with entity @s item.components."minecraft:custom_data".magical_addons.properties