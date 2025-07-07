# block:custom/cursed_head/break
# called by: block:break

execute unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot magical_addons:blocks/cursed_head

playsound block.stone.break block @a ~ ~ ~ 1 .8

particle block{block_state:"soul_sand"} ~ ~-.25 ~ 0 0 0 0.08 10

kill @n[type=item_display,tag=maddons.cursed_head,distance=...5]