# main:tick
# called by: #minecraft:tick

## play time in steps of 2 for babies, steps of 1 for adults
execute store result score #maddons.sculk_spider.anim.walk maddons.play_time \
		run scoreboard players add #maddons.entity maddons.play_time 1

## Entity animations
execute store result storage magical_addons:tick data.entity.sculk_spider.animations.walk.frame int 1 run scoreboard players operation #maddons.sculk_spider.anim.walk maddons.play_time %= #14 maddons.constant

## Entity tick command
execute as @e[type=!player,tag=maddons.entity.tickable] at @s run function magical_addons:entity/tick with entity @s data.magical_addons