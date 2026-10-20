# block:custom/cursed_head/break
# called by: block:break

kill @n[type=#magical_addons:display,tag=maddons.cursed_head,distance=...5]
kill @e[type=experience_orb,distance=...5]

particle block{block_state:"soul_sand"} ~ ~-.25 ~ 0 0 0 0 10

playsound block.stone.break block @a ~ ~ ~ 1 .8