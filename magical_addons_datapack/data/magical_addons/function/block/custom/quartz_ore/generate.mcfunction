# block:custom/quartz_ore/generate
# called by: dimension:the_aether/worldgen/set_blocks

## Block
execute summon item_display run data merge entity @s {transformation:{scale:[-1,1,-1]},Tags:[maddons.block,maddons.quartz_ore],teleport_duration:3,item:{id:"spawner",components:{item_model:"magical_addons:quartz_ore",custom_data:{magical_addons:{id:"quartz_ore",cmd:"execute unless block ~ ~ ~ spawner{components:{\"minecraft:custom_data\":{magical_addons:{id:quartz_ore}}}} run function magical_addons:block/custom/quartz_ore/break"}}}},view_range:64}
setblock ~ ~ ~ spawner{components:{"minecraft:item_model":"magical_addons:quartz_ore","minecraft:item_name":"{\"translate\":\"item.magical_addons.quartz_ore\"}","minecraft:hide_additional_tooltip":{},custom_data:{magical_addons:{generated:1b,break_speed:1.0,sound_pitch:1.0,sound_id:"block.stone.step",id:"quartz_ore"}}}}