# block:custom/wizarding_table/break
# called by: block:break

kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}},distance=..1]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{magical_addons:{result:1}}}}},distance=..1]

fill ~1 ~ ~ ~-1 ~ ~ air replace light[level=9]
fill ~ ~ ~1 ~ ~ ~-1 air replace light[level=9]
fill ~ ~-1 ~ ~ ~1 ~ air replace light[level=9]

execute if entity @s[tag=on] run loot spawn ~ ~ ~ loot magical_addons:sparkstone_orb

function magical_addons:block/drop
kill @s