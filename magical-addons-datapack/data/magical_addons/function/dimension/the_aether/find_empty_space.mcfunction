# dimension:the_aether/find_empty_space
# called by : dimension:the_aether/enter

## IF Spreading
execute store result storage magical_addons:temp data.aether_portal.pos int 1 run scoreboard players add #magical_addons:aether_portal maddons.temp 1
execute in the_aether store result score #magical_addons:aether_spread maddons.temp run function magical_addons:dimension/the_aether/spread with storage magical_addons:temp data.aether_portal
execute unless score #magical_addons:aether_spread maddons.temp matches 1 if score #magical_addons:aether_portal maddons.temp matches ..199 run return run function magical_addons:dimension/the_aether/find_empty_space

## ElSE Generate portal & save pos
execute in the_aether at @s run function magical_addons:dimension/the_aether/save_portal with entity @s