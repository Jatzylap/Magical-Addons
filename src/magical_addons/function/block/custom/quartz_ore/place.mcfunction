# block:custom/quartz_ore/place
# called by: block:custom/quartz_ore/scan

## Sound
playsound block.stone.place block @a ~ ~ ~ 1 0.8

## Block
execute summon item_display run data merge entity @s {data:{magical_addons:{id:"quartz_ore",break_cmd:"execute unless block ~ ~ ~ spawner{components:{\"minecraft:custom_data\":{magical_addons:{id:quartz_ore}}}} run function magical_addons:block/custom/quartz_ore/break"}},transformation:{scale:[-1f,1f,-1f]},Tags:[maddons.block,maddons.quartz_ore],teleport_duration:3,item:{id:"spawner",components:{item_model:"magical_addons:quartz_ore"}},view_range:64}