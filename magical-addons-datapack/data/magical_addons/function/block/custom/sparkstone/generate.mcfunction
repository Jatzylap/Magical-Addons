# block:custom/sparkstone/generate
# called by: block:set_id

setblock ~ ~ ~ trial_spawner{components:{"minecraft:item_model":"magical_addons:sparkstone","minecraft:item_name":{"translate":"item.magical_addons.sparkstone"},"minecraft:tooltip_display":{hidden_components:["minecraft:block_entity_data"]},custom_data:{magical_addons:{loot_id:1,generated:1b,break_speed:2.0,sound:"playsound block.amethyst_block.step block @a ~ ~ ~ 0.15",id:"sparkstone",groups:["explodable"]}}}}
execute summon item_display run data merge entity @s {data:{magical_addons:{id:"sparkstone",break_cmd:"execute unless block ~ ~ ~ trial_spawner{components:{\"minecraft:custom_data\":{magical_addons:{id:sparkstone}}}} run function magical_addons:block/custom/sparkstone/break"}},transformation:{scale:[-1f,1f,-1f]},Tags:[maddons.block,maddons.sparkstone],item:{id:trial_spawner,components:{item_model:"magical_addons:sparkstone"}},view_range:64}
