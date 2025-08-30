# block:custom/quartz_ore/place
# called by: block:custom/quartz_ore/scan

## Sound
playsound block.stone.place block @a ~ ~ ~ 1 0.8

## Block
execute summon item_display run data merge entity @s {transformation:{scale:[-1,1,-1]},Tags:[maddons.block,maddons.quartz_ore],teleport_duration:3,item:{id:"spawner",components:{item_model:"magical_addons:quartz_ore",custom_data:{magical_addons:{id:"quartz_ore",cmd:"execute unless block ~ ~ ~ spawner{components:{\"minecraft:custom_data\":{magical_addons:{id:quartz_ore}}}} run function magical_addons:block/custom/quartz_ore/break"}}}},view_range:64}