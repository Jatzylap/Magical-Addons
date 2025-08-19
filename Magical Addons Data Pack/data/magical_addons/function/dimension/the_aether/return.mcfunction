# dimension:the_aether/return
# called by: dimension:overworld/loop, player:event/death, dimension:the_aether/test_return

advancement revoke @s only magical_addons:---/dimension/aether_return_bed

tag @s remove maddons.in_aether

## Respawn anchor
execute if entity @s store result storage magical_addons:temp data.respawn_anchor_pos.x int 1 run data get entity @s respawn.pos[0]
execute if entity @s store result storage magical_addons:temp data.respawn_anchor_pos.y int 1 run data get entity @s respawn.pos[1]
execute if entity @s store result storage magical_addons:temp data.respawn_anchor_pos.z int 1 run data get entity @s respawn.pos[2]
execute if entity @s store success score @s maddons.successCount store result score @s maddons.temp run function magical_addons:dimension/the_aether/respawn_anchor with storage magical_addons:temp data.respawn_anchor_pos
execute if score @s maddons.successCount matches 1 if score @s maddons.temp matches 1 run return fail

## Return overworld coords
function magical_addons:dimension/the_aether/return_coords with entity @s

## Warp
execute if data storage magical_addons:temp data.last_overworld_pos run return run function magical_addons:dimension/the_aether/spawnpoint with storage magical_addons:temp data.last_overworld_pos

## Attempt warp if original coords were lost
execute in overworld positioned over motion_blocking_no_leaves run spreadplayers ~ ~ 0 64 false @s
execute in overworld at @s run spawnpoint