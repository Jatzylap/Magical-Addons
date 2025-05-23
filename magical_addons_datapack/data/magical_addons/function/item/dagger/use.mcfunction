# item:dagger/use
# called by advancement: item:use/dagger

execute as @n[tag=!maddons.dagger,type=snowball,nbt={Item:{components:{"minecraft:custom_data":{magical_addons:{id:"wooden_dagger"}}}}}] at @s run function magical_addons:item/dagger/wooden_dagger/shoot
execute as @n[tag=!maddons.dagger,type=snowball,nbt={Item:{components:{"minecraft:custom_data":{magical_addons:{id:"stone_dagger"}}}}}] at @s run function magical_addons:item/dagger/stone_dagger/shoot
execute as @n[tag=!maddons.dagger,type=snowball,nbt={Item:{components:{"minecraft:custom_data":{magical_addons:{id:"iron_dagger"}}}}}] at @s run function magical_addons:item/dagger/iron_dagger/shoot
execute as @n[tag=!maddons.dagger,type=snowball,nbt={Item:{components:{"minecraft:custom_data":{magical_addons:{id:"golden_dagger"}}}}}] at @s run function magical_addons:item/dagger/golden_dagger/shoot
execute as @n[tag=!maddons.dagger,type=snowball,nbt={Item:{components:{"minecraft:custom_data":{magical_addons:{id:"diamond_dagger"}}}}}] at @s run function magical_addons:item/dagger/diamond_dagger/shoot
execute as @n[tag=!maddons.dagger,type=snowball,nbt={Item:{components:{"minecraft:custom_data":{magical_addons:{id:"netherite_dagger"}}}}}] at @s run function magical_addons:item/dagger/netherite_dagger/shoot
execute as @n[tag=!maddons.dagger,type=snowball,nbt={Item:{components:{"minecraft:custom_data":{magical_addons:{id:"sparkstone_orb"}}}}}] at @s run function magical_addons:item/dagger/sparkstone_orb/shoot

execute if entity @s[gamemode=creative] as @n[tag=maddons.dagger,type=snowball] at @s on passengers run tag @s[type=item_display] add maddons.no_break

## Reset
scoreboard players reset @s maddons.snowball
advancement revoke @s from magical_addons:---/item/use