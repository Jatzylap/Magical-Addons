# block:custom/aether_portal/break
# called by: block:break

execute unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot magical_addons:blocks/aether_portal

fill ~-1 ~ ~-2 ~1 ~1 ~1 air replace light[level=15]
fill ~-1 ~ ~-1 ~1 ~1 ~2 air replace light[level=15]
fill ~-2 ~ ~-1 ~1 ~1 ~1 air replace light[level=15]
fill ~-1 ~ ~-1 ~2 ~1 ~1 air replace light[level=15]

## Part: head
execute if entity @n[type=#magical_addons:display,tag=maddons.aether_portal,tag=maddons.block.face_north,tag=maddons.block.part_head,distance=...5] positioned ~ ~ ~1 run kill @n[type=#magical_addons:display,tag=maddons.aether_portal,tag=maddons.block.part_foot,distance=...5]
execute if entity @n[type=#magical_addons:display,tag=maddons.aether_portal,tag=maddons.block.face_south,tag=maddons.block.part_head,distance=...5] positioned ~ ~ ~-1 run kill @n[type=#magical_addons:display,tag=maddons.aether_portal,tag=maddons.block.part_foot,distance=...5]
execute if entity @n[type=#magical_addons:display,tag=maddons.aether_portal,tag=maddons.block.face_west,tag=maddons.block.part_head,distance=...5] positioned ~1 ~ ~ run kill @n[type=#magical_addons:display,tag=maddons.aether_portal,tag=maddons.block.part_foot,distance=...5]
execute if entity @n[type=#magical_addons:display,tag=maddons.aether_portal,tag=maddons.block.face_east,tag=maddons.block.part_head,distance=...5] positioned ~-1 ~ ~ run kill @n[type=#magical_addons:display,tag=maddons.aether_portal,tag=maddons.block.part_foot,distance=...5]

## Part: foot
execute if entity @n[type=#magical_addons:display,tag=maddons.aether_portal,tag=maddons.block.face_north,tag=maddons.block.part_foot,distance=...5] positioned ~ ~ ~-1 run kill @n[type=#magical_addons:display,tag=maddons.aether_portal,tag=maddons.block.part_head,distance=...5]
execute if entity @n[type=#magical_addons:display,tag=maddons.aether_portal,tag=maddons.block.face_south,tag=maddons.block.part_foot,distance=...5] positioned ~ ~ ~1 run kill @n[type=#magical_addons:display,tag=maddons.aether_portal,tag=maddons.block.part_head,distance=...5]
execute if entity @n[type=#magical_addons:display,tag=maddons.aether_portal,tag=maddons.block.face_west,tag=maddons.block.part_foot,distance=...5] positioned ~-1 ~ ~ run kill @n[type=#magical_addons:display,tag=maddons.aether_portal,tag=maddons.block.part_head,distance=...5]
execute if entity @n[type=#magical_addons:display,tag=maddons.aether_portal,tag=maddons.block.face_east,tag=maddons.block.part_foot,distance=...5] positioned ~1 ~ ~ run kill @n[type=#magical_addons:display,tag=maddons.aether_portal,tag=maddons.block.part_head,distance=...5]

kill @n[type=#magical_addons:display,tag=maddons.aether_portal,distance=...5]