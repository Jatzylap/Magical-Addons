# dimension:the_aether/enter
# called by : dimension:the_aether/test_enter

stopsound @s music
spawnpoint
scoreboard players reset #magical_addons:aether_portal maddons.temp
scoreboard players reset #magical_addons:aether_spread maddons.temp
scoreboard players reset #magical_addons:aether_obstructed maddons.temp

## Save overworld pos & check if aether pos exists
execute store success score @s maddons.temp run function magical_addons:dimension/the_aether/check_coords with entity @s

## If coords don't exist, warp to nearest empty space & generate portal
execute if score @s maddons.temp matches 0 run function magical_addons:dimension/the_aether/find_empty_space

## Else get + tp to portal coords
execute if score @s maddons.temp matches 1 run function magical_addons:dimension/the_aether/warp_start with entity @s

## Play sound
execute in the_aether at @s run playsound magical_addons:block.portal.travel block @s ~ ~ ~ 0.5