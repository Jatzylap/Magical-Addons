# block:custom/gravitite_block/place
# called by: block:custom/gravitite_block/scan

## Sound
execute if entity @s[advancements={magical_addons:---/block/place/gravitite_block=true}] run playsound block.stone.place block @a ~ ~ ~ 1 0.8

## Block
execute summon item_display run data merge entity @s {transformation:{scale:[-1,1,-1]},Tags:[maddons.block,maddons.gravitite_block],item:{id:"spawner",components:{item_model:"magical_addons:gravitite_block",custom_data:{magical_addons:{id:"gravitite_block",cmd:"execute unless block ~ ~ ~ spawner{components:{\"minecraft:custom_data\":{magical_addons:{id:gravitite_block}}}} run function magical_addons:block/custom/gravitite_block/break"}}}},view_range:64,item_display:"head"}
data modify block ~ ~ ~ components."minecraft:custom_data".magical_addons.generated set value 1b