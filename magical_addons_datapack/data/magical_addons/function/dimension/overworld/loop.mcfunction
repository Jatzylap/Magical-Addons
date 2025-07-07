# dimension:overworld/loop
# called by: player:loop

## Generate custom blocks
function magical_addons:dimension/overworld/worldgen/start

## Return from Aether
execute if entity @s[tag=maddons.dreaming] run function magical_addons:dimension/the_aether/return