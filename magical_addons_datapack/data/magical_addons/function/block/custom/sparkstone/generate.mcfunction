# block:custom/sparkstone/generate
# called by: block:set_id

setblock ~ ~ ~ spawner{components:{"minecraft:item_model":"magical_addons:sparkstone","minecraft:item_name":"{\"translate\":\"item.magical_addons.sparkstone\"}","minecraft:hide_additional_tooltip":{},custom_data:{magical_addons:{generated:1b,break_speed:2.0,sound_pitch:1.0,sound_id:"block.amethyst_block.step",id:"sparkstone"}}}}
execute summon item_display run data merge entity @s {transformation:{scale:[-1,1,-1]},Tags:[maddons.block,maddons.sparkstone],item:{id:spawner,components:{item_model:"magical_addons:sparkstone",custom_data:{magical_addons:{id:"sparkstone",cmd:"execute unless block ~ ~ ~ spawner{components:{\"minecraft:custom_data\":{magical_addons:{id:sparkstone}}}} run function magical_addons:block/custom/sparkstone/break"}}}},view_range:64}
