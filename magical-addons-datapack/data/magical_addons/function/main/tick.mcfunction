# main:tick
# called by: #minecraft:tick

## Play entity animations
execute store result score #magical_addons:entity.sculk_spider.anim.walk maddons.play_time \
		store result score #magical_addons:entity.automaton.anim.walk maddons.play_time \
		run scoreboard players add #magical_addons:entity maddons.play_time 1
execute store result score #magical_addons:entity.sculk_spider.anim.walk_baby maddons.play_time \
		run scoreboard players add #magical_addons:entity_baby maddons.play_time 2

## Store entity animations
execute store result storage magical_addons:tick data.entity.sculk_spider.animations.walk.frame int 1 run scoreboard players operation #magical_addons:entity.sculk_spider.anim.walk maddons.play_time %= #14 maddons.constant
execute store result storage magical_addons:tick data.entity.sculk_spider.animations.walk_baby.frame int 1 run scoreboard players operation #magical_addons:entity.sculk_spider.anim.walk_baby maddons.play_time %= #14 maddons.constant
execute store result storage magical_addons:tick data.entity.automaton.animations.walk.frame int 1 run scoreboard players operation #magical_addons:entity.automaton.anim.walk maddons.play_time %= #39 maddons.constant

## Entity tick command
execute as @e[type=!player,tag=maddons.entity.tickable] at @s run function magical_addons:entity/tick with entity @s data.magical_addons
