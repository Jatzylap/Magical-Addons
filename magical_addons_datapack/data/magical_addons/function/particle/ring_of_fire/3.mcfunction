# particle:ring_of_fire/3
# called by: main:tick_cycle

## End
execute if score @s maddons.move >= @s maddons.constant run return run kill

scoreboard players add @s maddons.move 1

## Shift colour
execute if score @s[tag=!maddons.four] maddons.move matches 150.. run return run function magical_addons:particle/ring_of_fire/7
execute if score @s[tag=!maddons.three] maddons.move matches 120.. run return run function magical_addons:particle/ring_of_fire/6
execute if score @s[tag=!maddons.two] maddons.move matches 90.. run return run function magical_addons:particle/ring_of_fire/5
execute if score @s[tag=!maddons.one] maddons.move matches 60.. run function magical_addons:particle/ring_of_fire/4