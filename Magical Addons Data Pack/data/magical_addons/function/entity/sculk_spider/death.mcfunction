# entity:sculk_spider/death
# called by: entity:sculk_spider/loop

tag @s add maddons.death
execute on vehicle run data merge entity @s {NoGravity:0b}

## Set angle
execute if entity @s[tag=maddons.ground] run function magical_addons:entity/sculk_spider/moves/death_angles/ground
execute if entity @s[tag=maddons.ceiling] run function magical_addons:entity/sculk_spider/moves/death_angles/ceiling
execute if entity @s[tag=maddons.side_left] run function magical_addons:entity/sculk_spider/moves/death_angles/side_left
execute if entity @s[tag=maddons.side_right] run function magical_addons:entity/sculk_spider/moves/death_angles/side_right
execute if entity @s[tag=maddons.side_up] run function magical_addons:entity/sculk_spider/moves/death_angles/side_up
execute if entity @s[tag=maddons.side_down] run function magical_addons:entity/sculk_spider/moves/death_angles/side_down

## Set animation frame
execute store result score @s maddons.animation run time query gametime
scoreboard players operation @s maddons.animation %= #24000 maddons.constant
scoreboard players remove @s maddons.animation 1
execute on vehicle on passengers store result entity @s[tag=maddons.part] item.components."minecraft:custom_model_data".colors[0] int 1 on vehicle on passengers as @s[tag=maddons.entity] run scoreboard players operation @s maddons.animation %= #20 maddons.constant

## Set animation duration
scoreboard players set @s maddons.death 0