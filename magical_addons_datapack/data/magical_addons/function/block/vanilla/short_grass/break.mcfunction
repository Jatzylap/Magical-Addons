# block:vanilla/short_grass/break
# called by: block:break

## If block is replaced directly
execute if block ~ ~ ~ #magical_addons:air_like run playsound block.grass.break block @a ~ ~ ~ 1 .8
execute if block ~ ~ ~ #magical_addons:air_like run particle block{block_state:{Name:"minecraft:short_grass"}} ~ ~ ~ .2 .2 .2 0.08 40 force

function magical_addons:block/drop
kill @s