# entity:goat/screaming/loop
# called by: main:tick_entity

execute at @s[nbt=!{HasLeftHorn:0b,HasRightHorn:0b}] run return run execute if predicate magical_addons:shared/25_percent as @n[distance=..3,type=item,nbt={Age:1s,Item:{id:"minecraft:goat_horn"}}] at @s unless data entity @s Thrower run function magical_addons:entity/goat/screaming/drop_horn

tag @s remove maddons.goat.screaming
tag @s remove maddons.entity