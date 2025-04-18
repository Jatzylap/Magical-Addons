# block:vanilla/spawner/break
# called by: block:break

## If block is replaced directly
execute if block ~ ~ ~ #magical_addons:air_like run playsound magical_addons:block.spawner.break block @a ~ ~ ~ 1
execute if block ~ ~ ~ #magical_addons:air_like run particle item{item:{id:"minecraft:spawner"}} ~ ~ ~ .3 .3 .3 0.08 40 force

function magical_addons:block/drop
kill @s