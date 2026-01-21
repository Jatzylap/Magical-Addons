# block:custom/sparkstone/place
# called by: block:custom/sparkstone/place

## Sound
playsound block.amethyst_block.place block @a ~ ~ ~ 1 1.1

## Block
execute summon item_display run data merge entity @s {data:{magical_addons:{id:"sparkstone",break_cmd:"execute unless block ~ ~ ~ spawner{components:{\"minecraft:custom_data\":{magical_addons:{id:sparkstone}}}} run function magical_addons:block/custom/sparkstone/break"}},transformation:{scale:[-1f,1f,-1f]},Tags:[maddons.block,maddons.sparkstone],item:{id:spawner,components:{item_model:"magical_addons:sparkstone"}},view_range:64}
data modify block ~ ~ ~ components."minecraft:custom_data".magical_addons.generated set value 1b