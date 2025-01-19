# block:custom/golden_oak_leaves/break
# called by: block:break

## If block is replaced directly
execute if block ~ ~ ~ #magical_addons:air_like run playsound block.grass.break block @a ~ ~ ~ 1 .8

function magical_addons:block/drop
kill @s