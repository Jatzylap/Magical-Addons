# entity:flying_cow/death
# called by: entity:flying_cow/loop

tag @s add maddons.death
execute on vehicle run data merge entity @s {NoGravity:0b}

## Set angle
function magical_addons:entity/flying_cow/moves/death_angles/ground

## Set animation frame
execute store result score @s maddons.animation run time query gametime
scoreboard players operation @s maddons.animation %= #24000 maddons.constant
scoreboard players remove @s maddons.animation 1
execute on vehicle on passengers store result entity @s[tag=maddons.part] item.components."minecraft:custom_model_data".colors[0] int 1 on vehicle on passengers as @s[tag=maddons.entity] run scoreboard players operation @s maddons.animation %= #20 maddons.constant

## Set animation duration
scoreboard players set @s maddons.death 0