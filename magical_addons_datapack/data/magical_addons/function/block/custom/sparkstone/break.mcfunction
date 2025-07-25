# block:custom/sparkstone/break
# called by: block:break

## If block is replaced directly
execute if block ~ ~ ~ #magical_addons:air_like run playsound block.amethyst_block.break block @a ~ ~ ~ 1 1.1
execute if block ~ ~ ~ #magical_addons:air_like run function magical_addons:particle/break_block {id:"magical_addons:sparkstone"}

execute unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot magical_addons:blocks/sparkstone

kill @n[type=item_display,tag=maddons.sparkstone,distance=...5]