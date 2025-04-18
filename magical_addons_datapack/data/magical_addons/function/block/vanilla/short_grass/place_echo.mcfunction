# block:vanilla/short_grass/place_echo
# called by: block:vanilla/short_grass/place

data merge entity @s {item:{id:"chiseled_bookshelf",components:{"minecraft:item_model":"magical_addons:short_grass","minecraft:custom_data":{magical_addons:{id:"short_grass",block:"structure_void",cmd:"function magical_addons:block/vanilla/short_grass/break"}},"minecraft:custom_model_data":{colors:[[1,1,1]]}}},view_range:300.,Tags:[maddons.vanilla,maddons.persistent,maddons.short_grass]}
function magical_addons:block/offset with block ~ ~ ~
setblock ~ ~ ~ structure_void
tag @s add maddons.block