# block:custom/skyroot_leaves/break
# called by: block:break

## If block is replaced directly
execute if block ~ ~ ~ #magical_addons:air_like run function magical_addons:particle/break_block {id:"magical_addons:skyroot_leaves"}
execute if block ~ ~ ~ #magical_addons:air_like run playsound block.grass.break block @a ~ ~ ~ 1 .8

execute unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot magical_addons:blocks/skyroot_leaves

kill @n[type=item_display,tag=maddons.skyroot_leaves,distance=...5]