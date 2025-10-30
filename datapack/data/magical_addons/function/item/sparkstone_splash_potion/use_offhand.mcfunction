# item:sparkstone_splash_potion/use_offhand
# called by: item:sparkstone_splash_potion/use

execute anchored eyes run summon splash_potion ^ ^ ^ {Item:{id:"splash_potion",components:{potion_contents:{custom_color:47871}}},Tags:[maddons.sparkstone_splash_potion]} 
execute as @n[type=splash_potion,tag=maddons.sparkstone_splash_potion] at @s rotated as @p[advancements={magical_addons:---/item/use/sparkstone_splash_potion=true}] run tp @s ~ ~ ~ ~ ~

## Shoot
playsound entity.ender_pearl.throw player @a ~ ~ ~ 0.5 0.5
execute as @n[type=splash_potion,tag=maddons.sparkstone_splash_potion] at @s run function magical_addons:item/sparkstone_splash_potion/launch

item replace entity @s[gamemode=!creative] weapon.offhand with air