# block:custom/golden_oak_leaves/break
# called by: block:break

## If block is replaced directly
execute if block ~ ~ ~ #magical_addons:air_like run function magical_addons:particle/break_block {id:"magical_addons:golden_oak_leaves"}
execute if block ~ ~ ~ #magical_addons:air_like run playsound block.grass.break block @a ~ ~ ~ 1 .8

kill @n[type=#magical_addons:display,tag=maddons.golden_oak_leaves,distance=...5]
kill @e[type=experience_orb,distance=...5]