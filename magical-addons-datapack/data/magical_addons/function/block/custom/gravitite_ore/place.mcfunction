# block:custom/gravitite_ore/place
# called by: block:custom/gravitite_ore/scan

## Sound
playsound block.stone.place block @a ~ ~ ~ 1 0.8

## Block
execute summon item_display run data merge entity @s {data:{magical_addons:{group:"gravitite",id:"gravitite_ore",break_cmd:"execute unless block ~ ~ ~ trial_spawner{components:{\"minecraft:custom_data\":{magical_addons:{id:gravitite_ore}}}} run function magical_addons:block/custom/gravitite_ore/break"}},transformation:{scale:[-1f,1f,-1f]},Tags:[maddons.block,maddons.gravitite_ore,maddons.block.gravitite],teleport_duration:3,item:{id:"trial_spawner",components:{item_model:"magical_addons:gravitite_ore"}},view_range:64}
data modify block ~ ~ ~ components."minecraft:custom_data".magical_addons.generated set value 1b