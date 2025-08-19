# block:group/custom/leaves/decay
# called by: main:one_second

## IF persistent THEN stop path computation
$execute if predicate magical_addons:block/$(id)/will_survive run return fail

## IF ELSE not attached to a [tree block] THEN decay
$execute unless predicate magical_addons:block/$(id)/may_survive_sides_all run return run function magical_addons:block/custom/$(id)/decay

## ELSE, start search tree
execute unless score @s maddons.animation matches ..18 store result score @s maddons.temp run scoreboard players set @s maddons.animation -1
execute store result block ~ ~ ~ components."minecraft:custom_data".magical_addons.properties.path_permutation int 1 store result entity @s item.components."minecraft:custom_data".magical_addons.properties.path_permutation int 1 run scoreboard players add @s maddons.animation 1
$function magical_addons:block/custom/$(id)/decay/start with entity @s item.components."minecraft:custom_data".magical_addons.properties