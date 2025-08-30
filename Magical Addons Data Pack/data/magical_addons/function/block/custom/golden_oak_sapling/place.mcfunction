# block:custom/golden_oak_sapling/place
# called by: block:custom/golden_oak_sapling/scan

## Break (if replaced with same block)
execute if entity @e[type=item_display,tag=maddons.golden_oak_sapling,distance=...5] run loot spawn ~ ~ ~ loot magical_addons:blocks/golden_oak_sapling
kill @e[type=item_display,tag=maddons.golden_oak_sapling,distance=...5] 

## Block
summon item_display ~ ~ ~ {item:{id:"spawner",components:{"minecraft:item_model":"magical_addons:golden_oak_sapling","minecraft:custom_model_data":{strings:["block"]},"minecraft:custom_data":{magical_addons:{id:"golden_oak_sapling",cmd:"execute if predicate magical_addons:block/golden_oak_sapling/broken_face_up run function magical_addons:block/custom/golden_oak_sapling/break"}}}},view_range:64,Tags:[maddons.block,maddons.golden_oak_sapling,maddons.block.sapling]}
setblock ~ ~ ~ structure_void

## Sound
playsound block.grass.place block @a ~ ~ ~ 1 0.8