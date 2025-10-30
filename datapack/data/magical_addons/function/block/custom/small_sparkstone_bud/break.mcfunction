# block:custom/small_sparkstone_bud/break
# called by: block:break

particle item{item:{id:"minecraft:stick",components:{"minecraft:item_model":"magical_addons:small_sparkstone_bud"}}} ~ ~ ~ .2 .2 .2 0.08 40 force
playsound block.small_amethyst_bud.break block @a ~ ~ ~ 1 0.8

fill ~1 ~ ~ ~-1 ~ ~ air replace light[level=1,waterlogged=false]
fill ~ ~ ~1 ~ ~ ~-1 air replace light[level=1,waterlogged=false]
fill ~ ~-1 ~ ~ ~1 ~ air replace light[level=1,waterlogged=false]
fill ~1 ~ ~ ~-1 ~ ~ water replace light[level=1,waterlogged=true]
fill ~ ~ ~1 ~ ~ ~-1 water replace light[level=1,waterlogged=true]
fill ~ ~-1 ~ ~ ~1 ~ water replace light[level=1,waterlogged=true]

setblock ~ ~ ~ air

kill @n[type=#magical_addons:display,tag=maddons.small_sparkstone_bud,distance=...5]
kill @e[type=experience_orb,distance=...5]