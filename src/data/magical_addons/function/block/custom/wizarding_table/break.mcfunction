# block:custom/wizarding_table/break
# called by: block:break

execute if block ~ ~ ~ #magical_addons:air_like run function magical_addons:particle/break_block {id:"magical_addons:wizarding_table"}

## Remove light
fill ~1 ~ ~ ~-1 ~ ~ air replace light[level=9]
fill ~ ~ ~1 ~ ~ ~-1 air replace light[level=9]
fill ~ ~-1 ~ ~ ~1 ~ air replace light[level=9]

execute as @n[type=#magical_addons:display,tag=maddons.wizarding_table,tag=on,distance=...5] run loot spawn ~ ~ ~ loot magical_addons:sparkstone_orb

kill @n[type=#magical_addons:display,tag=maddons.wizarding_table,distance=...5]