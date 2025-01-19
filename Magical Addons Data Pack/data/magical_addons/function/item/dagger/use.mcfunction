# item:dagger/use
# called by advancement: item:use/dagger

execute as @n[tag=!maddons.dagger,type=snowball,nbt={Item:{components:{"minecraft:custom_data":{magical_addons:{dagger:1}}}}}] at @s if data entity @s {Item:{components:{"minecraft:custom_data":{magical_addons:{id:"wooden_dagger"}}}}} run function magical_addons:item/wooden_dagger/shoot
execute as @n[tag=!maddons.dagger,type=snowball,nbt={Item:{components:{"minecraft:custom_data":{magical_addons:{dagger:1}}}}}] at @s if data entity @s {Item:{components:{"minecraft:custom_data":{magical_addons:{id:"stone_dagger"}}}}} run function magical_addons:item/stone_dagger/shoot
execute as @n[tag=!maddons.dagger,type=snowball,nbt={Item:{components:{"minecraft:custom_data":{magical_addons:{dagger:1}}}}}] at @s if data entity @s {Item:{components:{"minecraft:custom_data":{magical_addons:{id:"iron_dagger"}}}}} run function magical_addons:item/iron_dagger/shoot
execute as @n[tag=!maddons.dagger,type=snowball,nbt={Item:{components:{"minecraft:custom_data":{magical_addons:{dagger:1}}}}}] at @s if data entity @s {Item:{components:{"minecraft:custom_data":{magical_addons:{id:"golden_dagger"}}}}} run function magical_addons:item/golden_dagger/shoot
execute as @n[tag=!maddons.dagger,type=snowball,nbt={Item:{components:{"minecraft:custom_data":{magical_addons:{dagger:1}}}}}] at @s if data entity @s {Item:{components:{"minecraft:custom_data":{magical_addons:{id:"diamond_dagger"}}}}} run function magical_addons:item/diamond_dagger/shoot
execute as @n[tag=!maddons.dagger,type=snowball,nbt={Item:{components:{"minecraft:custom_data":{magical_addons:{dagger:1}}}}}] at @s if data entity @s {Item:{components:{"minecraft:custom_data":{magical_addons:{id:"netherite_dagger"}}}}} run function magical_addons:item/netherite_dagger/shoot

execute if entity @s[gamemode=creative] run tag @n[tag=maddons.wooden_dagger,type=item_display] add maddons.no_break
scoreboard players reset @s maddons.snowball

advancement revoke @s from magical_addons:---/item/use