# block:custom/lavender_bush/generate
# called by: dimension:the_aether/load_blocks

data merge entity @s {data:{magical_addons:{id:"lavender_bush",break_cmd:"execute if predicate magical_addons:block/lavender_bush/broken_face_up run function magical_addons:block/custom/lavender_bush/break"}},item:{id:"spawner",components:{"minecraft:item_model":"magical_addons:lavender_bush","minecraft:custom_model_data":{strings:["block"]}}},view_range:64,Tags:[maddons.lavender_bush]}
function magical_addons:block/offset with block ~ ~ ~
setblock ~ ~ ~ structure_void
tag @s add maddons.block