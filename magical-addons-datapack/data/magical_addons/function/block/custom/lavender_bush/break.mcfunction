# block:custom/lavender_bush/break
# called by: block:break

## If block is replaced directly
execute if block ~ ~ ~ #magical_addons:air_like run playsound block.grass.break block @a ~ ~ ~ 1 .8
execute if block ~ ~ ~ #magical_addons:air_like run particle item{item:{id:"minecraft:chiseled_bookshelf",components:{item_model:"magical_addons:lavender_bush"}}} ~ ~ ~ .2 .2 .2 0.08 40 force

execute unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot magical_addons:blocks/lavender_bush
execute unless block ~ ~ ~ #magical_addons:air_like if entity @s[type=player,gamemode=creative] run loot spawn ~ ~ ~ loot magical_addons:blocks/lavender_bush

execute as @n[type=#magical_addons:display,tag=maddons.lavender_bush,distance=...5] on passengers run kill
fill ~ ~ ~ ~ ~ ~ air replace structure_void

kill @e[type=#magical_addons:display,tag=maddons.lavender_bush,distance=...5]