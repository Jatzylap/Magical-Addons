# block:custom/golden_oak_leaves/place
# called by: block:custom/golden_oak_leaves/scan

## Sound
execute if entity @s[advancements={magical_addons:---/block/place/golden_oak_leaves=true}] run playsound block.grass.place block @a ~ ~ ~ 1 .8

## Block
execute summon item_display run data merge entity @s {data:{magical_addons:{properties:{persistent:1b},groups:["leaves","explodable"],base_block:"spruce_slab[type=double]",id:"golden_oak_leaves",cmd:"execute unless block ~ ~ ~ spawner{components:{\"minecraft:custom_data\":{magical_addons:{id:golden_oak_leaves}}}} run function magical_addons:block/custom/golden_oak_leaves/break"}},transformation:{scale:[-1,1,-1]},Rotation:[0f,0f],item_display:"head",item:{id:"spawner",components:{"minecraft:item_model":"magical_addons:golden_oak_leaves"}},view_range:64,Tags:[maddons.block,maddons.golden_oak_leaves,maddons.block.leaves,maddons.block.unloadable]}
data modify block ~ ~ ~ components."minecraft:custom_data".magical_addons.generated set value 1b