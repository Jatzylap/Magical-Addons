# block:custom/gravitite_ore/break
# called by: block:break

## If block is replaced directly
execute if block ~ ~ ~ #magical_addons:air_like run playsound block.stone.break block @a ~ ~ ~ 1 0.8
execute if block ~ ~ ~ #magical_addons:air_like run kill @n[distance=...5,type=item_display,tag=maddons.light]
execute if block ~ ~ ~ #magical_addons:air_like run function magical_addons:particle/break_block {id:"magical_addons:gravitite_ore"}

execute unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot magical_addons:blocks/gravitite_ore

kill @n[type=item_display,tag=maddons.gravitite_ore,distance=...5]