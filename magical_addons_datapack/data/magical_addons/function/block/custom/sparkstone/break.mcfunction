# block:custom/sparkstone/break
# called by: block:break

## If block is replaced directly
execute if block ~ ~ ~ #magical_addons:air_like run playsound block.amethyst_block.break block @a ~ ~ ~ 1 1.1

function magical_addons:block/drop
kill @s