execute store result score @s maddons.x1 run data get entity @s Pos[0] 1000
execute store result score @s maddons.y1 run data get entity @s Pos[1] 1000
execute store result score @s maddons.z1 run data get entity @s Pos[2] 1000
$tp @s ^ ^ ^$(power)
execute store result score @s maddons.x2 run data get entity @s Pos[0] 1000
execute store result score @s maddons.y2 run data get entity @s Pos[1] 1000
execute store result score @s maddons.z2 run data get entity @s Pos[2] 1000
execute store result entity @s Motion[0] double 0.001 run scoreboard players operation @s maddons.x2 -= @s maddons.x1
execute store result entity @s Motion[1] double 0.001 run scoreboard players operation @s maddons.y2 -= @s maddons.y1
execute store result entity @s Motion[2] double 0.001 run scoreboard players operation @s maddons.z2 -= @s maddons.z1