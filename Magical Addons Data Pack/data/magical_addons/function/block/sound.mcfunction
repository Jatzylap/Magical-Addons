# block:sound
# called by: player:event/walk_on_block, player:event/sprint_on_block, entity:tile_step, entity:step

$$(sound)

scoreboard players reset @s maddons.walk_
scoreboard players reset @s maddons.sprint_
scoreboard players reset @s maddons.stepping

execute on vehicle run scoreboard players reset @s maddons.stepping