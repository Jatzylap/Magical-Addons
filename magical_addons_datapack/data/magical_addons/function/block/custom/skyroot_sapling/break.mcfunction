# block:custom/skyroot_sapling/break
# called by: block:break

## If block is replaced directly
execute if block ~ ~ ~ #magical_addons:air_like run playsound block.grass.break block @a ~ ~ ~ 1 .8
execute if block ~ ~ ~ #magical_addons:air_like run particle item{item:{id:"minecraft:chiseled_bookshelf",components:{item_model:"magical_addons:skyroot_sapling"}}} ~ ~ ~ .2 .2 .2 0.08 40 force

execute unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot magical_addons:blocks/skyroot_sapling
execute unless block ~ ~ ~ #magical_addons:air_like if entity @s[type=player,gamemode=creative] run loot spawn ~ ~ ~ loot magical_addons:blocks/skyroot_sapling

execute as @n[type=item_display,tag=maddons.skyroot_sapling,distance=...5] on passengers run kill
fill ~ ~ ~ ~ ~ ~ air replace structure_void
kill @e[type=item_display,tag=maddons.skyroot_sapling,distance=...5]