# block:sound
# called by: player:event/walk_on_block, player:event/sprint_on_block, entity:step

$playsound $(sound_id) block @a ~ ~ ~ .15

scoreboard players reset @s maddons.walk2
scoreboard players reset @s maddons.sprint2
scoreboard players reset @s maddons.stepping