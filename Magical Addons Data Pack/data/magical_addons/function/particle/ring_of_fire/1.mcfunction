# particle:ring_of_fire/1
# called by: particle:ring_of_fire

execute as @e[type=item_display,tag=maddons.ring_of_fire,tag=!maddons.summoned] at @s run function magical_addons:particle/ring_of_fire/2 with entity @s item.components."minecraft:custom_data".magical_addons