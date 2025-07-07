# block:custom/skyroot_log/break
# called by: block:break

## If block is replaced directly
execute if block ~ ~ ~ #magical_addons:air_like run function magical_addons:particle/break_block {id:"magical_addons:skyroot_log"}
execute if block ~ ~ ~ #magical_addons:air_like run playsound block.wood.break block @a ~ ~ ~ 1 0.8

execute unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot magical_addons:blocks/skyroot_log

kill @n[type=item_display,tag=maddons.skyroot_log,distance=...5]