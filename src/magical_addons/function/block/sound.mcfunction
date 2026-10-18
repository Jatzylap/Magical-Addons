# block:sound
# called by: player:step_on_block, magical_addons:entity/tile_step, magical_addons:entity/step

$$(sound)

## Sprint particle (players only)
$execute if score @s maddons.sprint_ matches 1.. run particle item{item:{id:"minecraft:stick",components:{"minecraft:item_model":"magical_addons:$(id)"}}} ~0.05 ~0.05 ~0.05 0 0 0 0.05 4

scoreboard players reset @s maddons.walk_
scoreboard players reset @s maddons.sprint_
scoreboard players reset @s maddons.stepping

execute on vehicle run scoreboard players reset @s maddons.stepping