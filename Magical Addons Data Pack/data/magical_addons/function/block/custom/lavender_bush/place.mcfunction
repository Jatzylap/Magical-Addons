# block:custom/lavender_bush/place
# called by: block:custom/lavender_bush/scan

## Break (if replaced with same block)
execute if entity @n[type=item_display,tag=maddons.lavender_bush,distance=...5] run loot spawn ~ ~ ~ loot magical_addons:blocks/lavender_bush
kill @e[type=item_display,tag=maddons.lavender_bush,distance=...5] 

data merge entity @s {data:{magical_addons:{id:"lavender_bush",cmd:"execute if predicate magical_addons:block/lavender_bush/broken_face_up run function magical_addons:block/custom/lavender_bush/break"}},item:{id:"spawner",components:{"minecraft:item_model":"magical_addons:lavender_bush","minecraft:custom_model_data":{strings:["block"]}}},view_range:64,Tags:[maddons.lavender_bush]}
function magical_addons:block/offset with block ~ ~ ~
setblock ~ ~ ~ structure_void
playsound block.grass.place block @a ~ ~ ~ 1 0.8
tag @s add maddons.block