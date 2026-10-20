# block:custom/quartz_ore/generate
# called by: dimension:the_aether/worldgen/set_blocks

## Block
execute summon item_display run data merge entity @s {data:{magical_addons:{id:"quartz_ore",break_cmd:"execute unless block ~ ~ ~ spawner{components:{\"minecraft:custom_data\":{magical_addons:{id:quartz_ore}}}} run function magical_addons:block/custom/quartz_ore/break"}},transformation:{scale:[-1f,1f,-1f]},Tags:[maddons.block,maddons.quartz_ore],teleport_duration:3,item:{id:"spawner",components:{item_model:"magical_addons:quartz_ore"}},view_range:64}
setblock ~ ~ ~ spawner{components:{"minecraft:item_model":"magical_addons:quartz_ore","minecraft:item_name":{"translate":"item.magical_addons.quartz_ore"},"minecraft:tooltip_display":{"hidden_components":["block_entity_data"]},custom_data:{magical_addons:{loot_id:9,generated:1b,break_speed:1.0,sound:"playsound block.stone.step block @a ~ ~ ~ 0.15",id:"quartz_ore"}}}}