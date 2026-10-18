# block:custom/gravitite_block/break
# called by: block:break

## If block is replaced directly
execute if block ~ ~ ~ #magical_addons:air_like run playsound block.stone.break block @a ~ ~ ~ 1 0.8
execute if block ~ ~ ~ #magical_addons:air_like run function magical_addons:particle/break_block {id:"magical_addons:gravitite_block"}

kill @n[type=#magical_addons:display,tag=maddons.gravitite_block,distance=...5]
kill @e[type=experience_orb,distance=...5]