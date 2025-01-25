# dimension:the_aether/return
# called by advancement : dimension:aether_return_bed
# called by: dimension:overworld/loop, player:event/death

execute if entity @s[tag=maddons.dreaming] run clear
execute if entity @s[tag=maddons.dreaming] run effect clear
execute if entity @s[tag=maddons.dreaming] store result storage maddons.player:temp data.dream_pos.x int 1 run scoreboard players get @s maddons.dream.x
execute if entity @s[tag=maddons.dreaming] store result storage maddons.player:temp data.dream_pos.y int 1 run scoreboard players get @s maddons.dream.y
execute if entity @s[tag=maddons.dreaming] store result storage maddons.player:temp data.dream_pos.z int 1 run scoreboard players get @s maddons.dream.z
execute if entity @s[tag=maddons.dreaming] run function magical_addons:dimension/the_aether/spawnpoint with storage maddons.player:temp data.dream_pos
execute if entity @s[tag=maddons.dreaming] run function magical_addons:dev/restore_inventory {slot:Aether}

tag @s remove maddons.dreaming
advancement revoke @s only magical_addons:---/dimension/aether_return_bed