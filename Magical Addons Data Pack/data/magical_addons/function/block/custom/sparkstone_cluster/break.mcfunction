# block:custom/sparkstone_cluster/break
# called by: block:break

particle item{item:{id:"minecraft:stick",components:{"minecraft:item_model":"magical_addons:sparkstone_cluster"}}} ~ ~ ~ .2 .2 .2 0.08 40 force
playsound block.amethyst_block.break block @a ~ ~ ~ 1 0.8

fill ~1 ~ ~ ~-1 ~ ~ air replace light[level=4,waterlogged=false]
fill ~ ~ ~1 ~ ~ ~-1 air replace light[level=4,waterlogged=false]
fill ~ ~-1 ~ ~ ~1 ~ air replace light[level=4,waterlogged=false]
fill ~1 ~ ~ ~-1 ~ ~ water replace light[level=4,waterlogged=true]
fill ~ ~ ~1 ~ ~ ~-1 water replace light[level=4,waterlogged=true]
fill ~ ~-1 ~ ~ ~1 ~ water replace light[level=4,waterlogged=true]

setblock ~ ~ ~ air

execute unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot magical_addons:blocks/sparkstone_cluster

kill @n[type=item_display,tag=maddons.sparkstone_cluster,distance=...5]
kill @e[type=experience_orb,distance=...5]