# dimension:the_end/loop
# called by: player:loop

## Generate custom blocks
function magical_addons:dimension/the_end/worldgen/start

## Return from Aether dream
execute if entity @s[tag=maddons.dreaming] run function magical_addons:dimension/the_aether/return