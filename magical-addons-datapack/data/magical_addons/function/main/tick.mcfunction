# main:tick
# called by: #minecraft:tick

## Play loopable entity animations
execute store result score #magical_addons:entity.automaton.anim.walk maddons.play_time \
		store result score #magical_addons:entity.automaton.anim.run maddons.play_time \
		run scoreboard players add #magical_addons:entity maddons.play_time 1

## Store loopable entity animations
execute store result storage magical_addons:tick data.entity.automaton.animations.walk.frame int 1 run scoreboard players operation #magical_addons:entity.automaton.anim.walk maddons.play_time %= #39 maddons.constant
execute store result storage magical_addons:tick data.entity.automaton.animations.run.frame int 1 run scoreboard players operation #magical_addons:entity.automaton.anim.run maddons.play_time %= #16 maddons.constant

## Entity tick command
execute as @e[type=!player,tag=maddons.entity.tickable] at @s run function magical_addons:entity/tick with entity @s data.magical_addons