# block:custom/wizarding_table/place
# called by: block:custom/wizarding_table/scan

## Sound
execute if entity @s[advancements={magical_addons:---/block/place/wizarding_table=true}] run playsound block.wood.place block @a ~ ~ ~ 1 .8

## Block
function magical_addons:block/custom/wizarding_table/set_state with block ~ ~ ~
data modify block ~ ~ ~ components."minecraft:custom_data".magical_addons.generated set value 1b

## Marker
execute if data block ~ ~ ~ {components:{"minecraft:custom_model_data":{flags:[B;0B]}}} summon item_display run data merge entity @s {transformation:{scale:[-1.001f,1.001f,-1.001f]},item:{id:"spawner",components:{item_model:"magical_addons:wizarding_table",custom_model_data:{flags:[B;0B]},custom_data:{magical_addons:{id:"wizarding_table",cmd:"execute unless block ~ ~ ~ #magical_addons:wizarding_table{components:{\"minecraft:custom_data\":{magical_addons:{id:wizarding_table}}}} run function magical_addons:block/custom/wizarding_table/break"}}}},Tags:[off,maddons.block,maddons.tickable,maddons.wizarding_table],view_range:64}
execute if data block ~ ~ ~ {components:{"minecraft:custom_model_data":{flags:[B;1B]}}} summon item_display run data merge entity @s {transformation:{scale:[-1.001f,1.001f,-1.001f]},item:{id:"spawner",components:{item_model:"magical_addons:wizarding_table",custom_model_data:{flags:[B;1B]},custom_data:{magical_addons:{id:"wizarding_table",cmd:"execute unless block ~ ~ ~ #magical_addons:wizarding_table{components:{\"minecraft:custom_data\":{magical_addons:{id:wizarding_table}}}} run function magical_addons:block/custom/wizarding_table/break"}}}},Tags:[on,off,maddons.block,maddons.tickable,maddons.wizarding_table],view_range:64}

## Activate if picked when powered
execute if data block ~ ~ ~ {components:{"minecraft:custom_model_data":{flags:[B;1B]}}} as @n[type=item_display,tag=maddons.wizarding_table,tag=off,tag=on,distance=...5] run function magical_addons:block/custom/wizarding_table/engage