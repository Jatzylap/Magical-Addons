# entity:player_display/animate
# called by: entity:player_display/loop

$execute on vehicle on passengers as @s[type=item_display,tag=maddons.player_display,tag=!maddons.entity] run function magical_addons:entity/player_display/moves/$(animation)/frames/$(frame)
execute on vehicle run return run scoreboard players add @s maddons.animation 1