# block:vanilla/short_grass/place_sky_plains
# called by: block:vanilla/short_grass/place

data merge entity @s {item:{id:"chiseled_bookshelf",components:{"minecraft:item_model":"magical_addons:short_grass","minecraft:custom_model_data":{colors:[11665355]},"minecraft:custom_data":{magical_addons:{id:"short_grass",block:"structure_void",cmd:"function magical_addons:block/vanilla/short_grass/break"}}}},view_range:300.,Tags:[maddons.block,maddons.vanilla,maddons.persistent,maddons.short_grass]}
function magical_addons:block/offset with block ~ ~ ~