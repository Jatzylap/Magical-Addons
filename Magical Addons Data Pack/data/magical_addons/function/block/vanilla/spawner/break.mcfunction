# block:vanilla/spawner/break
# called by: block:break

## If block is replaced directly
execute if block ~ ~ ~ #magical_addons:air_like run playsound magical_addons:block.spawner.break block @a ~ ~ ~ 1
execute if block ~ ~ ~ #magical_addons:air_like run function magical_addons:particle/break_block {id:"spawner"}

kill @n[type=item_display,tag=maddons.spawner,distance=...5]