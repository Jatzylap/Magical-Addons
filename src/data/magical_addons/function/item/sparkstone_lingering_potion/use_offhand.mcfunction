# item:sparkstone_lingering_potion/use_offhand
# called by: item:sparkstone_lingering_potion/use

execute anchored eyes run summon lingering_potion ^ ^ ^ {Item:{id:"lingering_potion",components:{potion_contents:{custom_color:47871}}},Tags:[maddons.sparkstone_lingering_potion]} 
execute as @n[type=lingering_potion,tag=maddons.sparkstone_lingering_potion] at @s rotated as @p[advancements={magical_addons:---/item/use/sparkstone_lingering_potion=true}] run tp @s ~ ~ ~ ~ ~

## Shoot
playsound entity.ender_pearl.throw player @a ~ ~ ~ 0.5 0.5
execute as @n[type=lingering_potion,tag=maddons.sparkstone_lingering_potion] at @s run function magical_addons:item/sparkstone_lingering_potion/launch

item replace entity @s[gamemode=!creative] weapon.offhand with air