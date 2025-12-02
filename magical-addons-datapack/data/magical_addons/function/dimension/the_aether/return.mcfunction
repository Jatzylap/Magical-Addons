# dimension:the_aether/return
# called by: dimension:overworld/loop, dimension:the_aether/test_return

advancement revoke @s only magical_addons:---/dimension/aether_return_bed

## Return aether & overworld coords
function magical_addons:dimension/the_aether/return_coords with entity @s

## Warp
execute if data storage magical_addons:temp data.last_overworld_pos run return run function magical_addons:dimension/the_aether/spawnpoint with storage magical_addons:temp data.last_overworld_pos

## Attempt warp if original coords were lost
execute in overworld run spreadplayers ~ ~ 16 64 false @s