# block:custom/wizarding_table/break
# called by: block:break

kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{magical_addons:{gui:1}}}}},distance=..1]
fill ~ ~ ~ ~1 ~ ~ air replace light[level=9]
fill ~ ~ ~ ~-1 ~ ~ air replace light[level=9]
fill ~ ~ ~ ~ ~ ~1 air replace light[level=9]
fill ~ ~ ~ ~ ~ ~-1 air replace light[level=9]
fill ~ ~ ~ ~ ~-1 ~ air replace light[level=9]
fill ~ ~ ~ ~ ~1 ~ air replace light[level=9]

function magical_addons:block/drop
kill @s