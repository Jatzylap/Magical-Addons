# block:custom/sparkstone_cluster/break
# called by: block:break

## If block is replaced directly
execute if block ~ ~ ~ #magical_addons:air_like run particle item{item:{id:"minecraft:stick",components:{"minecraft:item_model":"magical_addons:sparkstone_cluster"}}} ~ ~ ~ .2 .2 .2 0.08 40 force
execute if block ~ ~ ~ #magical_addons:air_like run playsound block.amethyst_block.break block @a ~ ~ ~ 1 1.1

fill ~1 ~ ~ ~-1 ~ ~ air replace light[level=4,waterlogged=false]
fill ~ ~ ~1 ~ ~ ~-1 air replace light[level=4,waterlogged=false]
fill ~ ~-1 ~ ~ ~1 ~ air replace light[level=4,waterlogged=false]
fill ~1 ~ ~ ~-1 ~ ~ water replace light[level=4,waterlogged=true]
fill ~ ~ ~1 ~ ~ ~-1 water replace light[level=4,waterlogged=true]
fill ~ ~-1 ~ ~ ~1 ~ water replace light[level=4,waterlogged=true]

function magical_addons:block/drop

kill @s