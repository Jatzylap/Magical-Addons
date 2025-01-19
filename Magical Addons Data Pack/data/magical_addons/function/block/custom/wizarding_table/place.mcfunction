# block:custom/wizarding_table/place
# called by: block:place

## Sound
execute if entity @s[advancements={magical_addons:---/block/place=true}] run playsound block.wood.place block @a ~ ~ ~ 1 .8

## Block
setblock ~ ~ ~ brown_shulker_box{components:{custom_data:{magical_addons:{generated:1b,id:"wizarding_table"}}},lock:{components:{item_name:"§maddons.wizarding_table"}},CustomName:'{"translate":"item.minecraft.wizarding_table"}'}

## Marker
execute summon item_display run data merge entity @s {transformation:{scale:[1.001f,1.001f,1.001f]},item:{count:1,id:"chiseled_bookshelf",components:{item_model:"magical_addons:wizarding_table",custom_model_data:{flags:[0]}}},Tags:[off,maddons.block,maddons.persistent,maddons.tickable,maddons.wizarding_table],shadow_strength:0f,view_range:300f}