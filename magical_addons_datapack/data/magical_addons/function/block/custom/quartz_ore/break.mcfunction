# block:custom/quartz_ore/break
# called by: block:break

## If block is replaced directly
execute if block ~ ~ ~ #magical_addons:air_like run playsound block.stone.break block @a ~ ~ ~ 1 0.8
execute if block ~ ~ ~ #magical_addons:air_like run function magical_addons:particle/break_block {id:"magical_addons:quartz_ore"}

execute unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot magical_addons:blocks/quartz_ore

kill @n[type=item_display,tag=maddons.quartz_ore,distance=...5]