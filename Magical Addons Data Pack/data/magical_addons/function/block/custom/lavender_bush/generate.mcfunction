# block:custom/lavender_bush/generate
# called by: dimension:the_aether/worldgen/set_blocks

data merge entity @s {item:{id:"spawner",components:{"minecraft:item_model":"magical_addons:lavender_bush","minecraft:custom_model_data":{strings:["block"]},"minecraft:custom_data":{magical_addons:{id:"lavender_bush",cmd:"execute if predicate magical_addons:block/lavender_bush/broken_face_up run function magical_addons:block/custom/lavender_bush/break"}}}},view_range:64,Tags:[maddons.lavender_bush]}
function magical_addons:block/offset with block ~ ~ ~
setblock ~ ~ ~ structure_void
tag @s add maddons.block