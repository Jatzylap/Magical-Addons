# item:bone_meal/magic
# called by: item:bone_meal/use 

particle happy_villager ~ ~ ~ 0.5 0.5 0.5 0 25

scoreboard players add @n[type=item_display,tag=maddons.block,tag=maddons.golden_oak_sapling,distance=...5] maddons.cooldown 25

kill