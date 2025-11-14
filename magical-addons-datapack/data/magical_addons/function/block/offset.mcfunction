# block:offset
# called by: block:custom/*/place

## Generate seed
$scoreboard players set @s maddons.x $(x)
$scoreboard players set @s maddons.z $(z)
scoreboard players operation @s maddons.x += @s maddons.z

## Assign value between 0 and 3
execute store result score @s maddons.temp run scoreboard players operation @s maddons.x %= #4 maddons.constant

## Apply offset
execute if score @s maddons.temp matches 0 run return run data merge entity @s {transformation:{translation:[0.25f,0.0f,0.0f]}}
execute if score @s maddons.temp matches 1 run return run data merge entity @s {transformation:{translation:[-0.25f,0.0f,0.0f]}}
execute if score @s maddons.temp matches 2 run return run data merge entity @s {transformation:{translation:[0.0f,0.0f,0.25f]}}
execute if score @s maddons.temp matches 3 run return run data merge entity @s {transformation:{translation:[0.0f,0.0f,-0.25f]}}