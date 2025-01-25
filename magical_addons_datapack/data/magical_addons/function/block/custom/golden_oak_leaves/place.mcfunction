# block:custom/golden_oak_leaves/place
# called by: block:place

## Sound
execute if entity @s[advancements={magical_addons:---/block/place=true}] if block ~ ~ ~ chiseled_bookshelf{components:{"minecraft:custom_data":{maddons.id:"golden_oak_leaves"}}} run playsound block.grass.place block @a ~ ~ ~ 1 .8

## Block
execute unless block ~ ~ ~ chiseled_bookshelf run setblock ~ ~ ~ chiseled_bookshelf[facing=north,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=true]{components:{block_state:{"facing":"north","slot_0_occupied":"false","slot_1_occupied":"false","slot_2_occupied":"false","slot_3_occupied":"false","slot_4_occupied":"true","slot_5_occupied":"true"},custom_model_data:83,custom_data:{maddons.id:"golden_oak_leaves"}}}
