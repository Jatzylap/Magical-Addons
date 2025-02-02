# block:custom/wizarding_table/place
# called by: block:place_end

## Sound
execute if entity @s[advancements={magical_addons:---/block/place/wizarding_table=true}] run playsound block.wood.place block @a ~ ~ ~ 1 .8

## Block
setblock ~ ~ ~ brown_shulker_box{components:{custom_data:{magical_addons:{generated:1b,id:"wizarding_table"}}},lock:{components:{item_name:"§maddons.wizarding_table"}},CustomName:'{"translate":"item.minecraft.wizarding_table"}'}

## Marker
execute summon item_display run data merge entity @s {transformation:{scale:[1.001f,1.001f,1.001f]},item:{id:"chiseled_bookshelf",components:{item_model:"magical_addons:wizarding_table",custom_model_data:{flags:[0]},custom_data:{magical_addons:{id:"wizarding_table",block:"#magical_addons:wizarding_table{components:{\"minecraft:custom_data\":{magical_addons:{id:wizarding_table}}}}",cmd:"function magical_addons:block/custom/wizarding_table/break"}}}},Tags:[off,maddons.block,maddons.persistent,maddons.tickable,maddons.wizarding_table],view_range:300f}