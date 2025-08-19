# block:custom/medium_sparkstone_bud/break
# called by: block:break

particle item{item:{id:"minecraft:stick",components:{"minecraft:item_model":"magical_addons:medium_sparkstone_bud"}}} ~ ~ ~ .2 .2 .2 0.08 40 force
playsound block.medium_amethyst_bud.break block @a ~ ~ ~ 1 0.76

fill ~1 ~ ~ ~-1 ~ ~ air replace light[level=2,waterlogged=false]
fill ~ ~ ~1 ~ ~ ~-1 air replace light[level=2,waterlogged=false]
fill ~ ~-1 ~ ~ ~1 ~ air replace light[level=2,waterlogged=false]
fill ~1 ~ ~ ~-1 ~ ~ water replace light[level=2,waterlogged=true]
fill ~ ~ ~1 ~ ~ ~-1 water replace light[level=2,waterlogged=true]
fill ~ ~-1 ~ ~ ~1 ~ water replace light[level=2,waterlogged=true]

setblock ~ ~ ~ air

execute unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot magical_addons:blocks/medium_sparkstone_bud

kill @n[type=item_display,tag=maddons.medium_sparkstone_bud,distance=...5]
kill @e[type=experience_orb,distance=...5]