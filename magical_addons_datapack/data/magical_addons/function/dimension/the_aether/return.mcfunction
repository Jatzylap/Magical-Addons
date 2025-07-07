# dimension:the_aether/return
# called by advancement: dimension:aether_return_bed
# called by: dimension:overworld/loop, player:event/death, entity:player_display/sleep/end_dream

execute if entity @s[tag=maddons.dreaming] store result storage maddons.player:temp data.respawn_anchor_pos.x int 1 run data get entity @s SpawnX
execute if entity @s[tag=maddons.dreaming] store result storage maddons.player:temp data.respawn_anchor_pos.y int 1 run data get entity @s SpawnY
execute if entity @s[tag=maddons.dreaming] store result storage maddons.player:temp data.respawn_anchor_pos.z int 1 run data get entity @s SpawnZ
execute if entity @s[tag=maddons.dreaming] store success score @s maddons.successCount store result score @s maddons.temp run function magical_addons:dimension/the_aether/respawn_anchor with storage maddons.player:temp data.respawn_anchor_pos
execute if score @s[tag=maddons.dreaming] maddons.successCount matches 1 if score @s maddons.temp matches 1 run return fail

#execute if entity @s[tag=maddons.dreaming] run function magical_addons:dev/store_inventory {slot:inAether}
#execute if entity @s[tag=maddons.dreaming] run clear
execute if entity @s[tag=maddons.dreaming] run effect clear
execute if entity @s store result storage maddons.player:temp data.dream_pos.x int 1 run scoreboard players get @s maddons.dream.x
execute if entity @s store result storage maddons.player:temp data.dream_pos.y int 1 run scoreboard players get @s maddons.dream.y
execute if entity @s store result storage maddons.player:temp data.dream_pos.z int 1 run scoreboard players get @s maddons.dream.z

execute if entity @s[tag=maddons.dreaming] run function magical_addons:dimension/the_aether/spawnpoint with storage maddons.player:temp data.dream_pos
#execute if entity @s run function magical_addons:dev/restore_inventory {slot:outAether}

tag @s remove maddons.dreaming
advancement revoke @s only magical_addons:---/dimension/aether_return_bed