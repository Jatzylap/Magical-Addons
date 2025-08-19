# dimension:the_aether/enter
# called by : dimension:the_aether/test_enter

stopsound @s music
tag @s add maddons.in_aether
spawnpoint

## Check if portal is already generated in aether & save overworld coords
execute in the_aether run forceload add ~-1 ~-2 ~1 ~1
execute store success score @s maddons.temp run function magical_addons:dimension/the_aether/check_coords with entity @s

## Warp
execute in the_aether positioned over motion_blocking_no_leaves run tp @s ~ ~1 ~
execute in the_aether positioned over motion_blocking_no_leaves at @s run playsound magical_addons:block.portal.travel ambient @s ~ ~ ~ 0.5

## Attempt to generate & save portal pos
execute if score @s maddons.temp matches 0 in the_aether run function magical_addons:dimension/the_aether/save_portal with entity @s
execute in the_aether run forceload remove ~-1 ~-2 ~1 ~1