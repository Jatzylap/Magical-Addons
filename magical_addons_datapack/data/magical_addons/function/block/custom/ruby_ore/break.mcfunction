# block:custom/ruby_ore/break
# called by: block:break

## If block is replaced directly
execute if block ~ ~ ~ #magical_addons:air_like run playsound block.stone.break block @a ~ ~ ~ 1 .8
execute if block ~ ~ ~ #magical_addons:air_like run kill @n[distance=...5,type=item_display,tag=maddons.light]

function magical_addons:block/drop
kill @s