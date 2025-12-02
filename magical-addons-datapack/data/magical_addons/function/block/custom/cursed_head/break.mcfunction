# block:custom/cursed_head/break
# called by: block:break

execute unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot magical_addons:blocks/cursed_head

kill @n[type=#magical_addons:display,tag=maddons.cursed_head,distance=...5]
kill @e[type=experience_orb,distance=...5]

particle block{block_state:"soul_sand"} ~ ~-.25 ~ 0 0 0 0 10

playsound block.stone.break block @a ~ ~ ~ 1 .8