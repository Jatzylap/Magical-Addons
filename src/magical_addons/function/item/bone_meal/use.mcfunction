# item:bone_meal/use
# called by advancement: item:use/bone_meal 

execute as @n[type=interaction,tag=maddons.block.interaction,tag=maddons.bone_meal] at @s if data entity @s interaction run function magical_addons:item/bone_meal/magic

## Clear item
item modify entity @s[gamemode=!creative] weapon.mainhand magical_addons:item/consume

advancement revoke @s from magical_addons:---/item/use