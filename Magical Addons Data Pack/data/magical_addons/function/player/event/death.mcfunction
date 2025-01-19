# player:event/death
# called by advancement: player:death

execute if entity @s[tag=maddons.dreaming] run function magical_addons:dimension/the_aether/return
tag @s remove maddons.usingblockingRod
execute if entity @s[tag=!maddons.aa] run scoreboard players set @s maddons.mana 200
execute if entity @s[tag=maddons.aa] run scoreboard players set @s maddons.mana 400
execute as @e[tag=maddons.angry_chicken,distance=..100] at @s run function magical_addons:entity/behaviours/angry_chicken/forget

advancement revoke @s only magical_addons:---/player/death