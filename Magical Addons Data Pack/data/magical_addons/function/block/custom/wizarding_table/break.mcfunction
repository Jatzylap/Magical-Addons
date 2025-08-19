# block:custom/wizarding_table/break
# called by: block:break

## Kill redundant items
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}},distance=..1]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{magical_addons:{result:1}}}}},distance=..1]
kill @e[type=item,nbt={Item:{id:"minecraft:barrel",components:{"minecraft:custom_name":{"translate":"item.magical_addons.wizarding_table"}}}},distance=..1]
kill @e[type=item,nbt={Item:{id:"minecraft:brown_shulker_box",components:{"minecraft:custom_name":{"translate":"item.magical_addons.wizarding_table"}}}},distance=..1]

execute if block ~ ~ ~ #magical_addons:air_like run function magical_addons:particle/break_block {id:"magical_addons:wizarding_table"}

## Remove light
fill ~1 ~ ~ ~-1 ~ ~ air replace light[level=9]
fill ~ ~ ~1 ~ ~ ~-1 air replace light[level=9]
fill ~ ~-1 ~ ~ ~1 ~ air replace light[level=9]

execute unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot magical_addons:blocks/wizarding_table

execute as @n[type=item_display,tag=maddons.wizarding_table,tag=on,distance=...5] run loot spawn ~ ~ ~ loot magical_addons:sparkstone_orb

kill @n[type=item_display,tag=maddons.wizarding_table,distance=...5]