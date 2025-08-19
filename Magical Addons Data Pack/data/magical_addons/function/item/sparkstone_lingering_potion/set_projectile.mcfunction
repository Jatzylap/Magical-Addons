# item:sparkstone_lingering_potion/set_projectile
# called by: item:sparkstone_lingering_potion/use

execute anchored eyes run summon lingering_potion ^ ^ ^ {Item:{id:"lingering_potion",components:{potion_contents:{custom_color:47871}}},Tags:[maddons.sparkstone_lingering_potion]} 

execute store result score @s maddons.x1 store result score @s maddons.x run data get entity @s Motion[0] 1000
execute store result score @s maddons.y1 store result score @s maddons.y run data get entity @s Motion[1] 1000
execute store result score @s maddons.z1 store result score @s maddons.z run data get entity @s Motion[2] 1000

execute if score @s maddons.x matches ..-1 run scoreboard players operation @s maddons.x *= #-1 maddons.constant
execute if score @s maddons.y matches ..-1 run scoreboard players operation @s maddons.y *= #-1 maddons.constant
execute if score @s maddons.z matches ..-1 run scoreboard players operation @s maddons.z *= #-1 maddons.constant

## Rotate
execute if score @s maddons.y > @s maddons.x if score @s maddons.y > @s maddons.z if score @s maddons.y1 matches 0.. as @n[type=lingering_potion,tag=maddons.sparkstone_lingering_potion] at @s run rotate @s 0 -90
execute if score @s maddons.y > @s maddons.x if score @s maddons.y > @s maddons.z if score @s maddons.y1 matches ..-1 as @n[type=lingering_potion,tag=maddons.sparkstone_lingering_potion] at @s run rotate @s 0 90
execute if score @s maddons.z > @s maddons.x if score @s maddons.z > @s maddons.y if score @s maddons.z1 matches ..-1 as @n[type=lingering_potion,tag=maddons.sparkstone_lingering_potion] at @s run rotate @s 180 0
execute if score @s maddons.z > @s maddons.x if score @s maddons.z > @s maddons.y if score @s maddons.z1 matches 0.. as @n[type=lingering_potion,tag=maddons.sparkstone_lingering_potion] at @s run rotate @s 90 0
execute if score @s maddons.x > @s maddons.y if score @s maddons.x > @s maddons.z if score @s maddons.x1 matches ..-1 as @n[type=lingering_potion,tag=maddons.sparkstone_lingering_potion] at @s run rotate @s 0 0
execute if score @s maddons.x > @s maddons.y if score @s maddons.x > @s maddons.z if score @s maddons.x1 matches 0.. as @n[type=lingering_potion,tag=maddons.sparkstone_lingering_potion] at @s run rotate @s -90 0

## Launch
playsound block.dispenser.launch block @a ~ ~ ~ 0.5 1.2
execute as @n[type=lingering_potion,tag=maddons.sparkstone_lingering_potion] at @s run function magical_addons:item/sparkstone_lingering_potion/launch

kill