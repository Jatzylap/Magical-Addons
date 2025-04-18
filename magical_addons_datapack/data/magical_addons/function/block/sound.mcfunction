# block:sound
# called by: player:event/walk_on_block, player:event/sprint_on_block, entity:tile_step, entity:step

$playsound $(sound_id) master @a ~ ~ ~ .15

scoreboard players reset @s maddons.walk2
scoreboard players reset @s maddons.sprint2
scoreboard players reset @s maddons.stepping

execute on vehicle run scoreboard players reset @s maddons.walk2
execute on vehicle run scoreboard players reset @s maddons.sprint2
execute on vehicle run scoreboard players reset @s maddons.stepping