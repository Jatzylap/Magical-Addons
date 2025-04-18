# block:vanilla/spawner/tick_the_nether
# called by: dimension:the_nether/worldgen/set_blocks

execute in the_nether unless data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{}}}} run summon item_display ~ ~ ~ {item:{id:"spawner",components:{custom_data:{magical_addons:{id:"spawner",block:"spawner",cmd:"function magical_addons:block/vanilla/spawner/break"}}}},Tags:[maddons.block,maddons.persistent,maddons.vanilla,maddons.spawner]}
execute in the_nether unless data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{}}}} run data merge block ~ ~ ~ {components:{custom_data:{magical_addons:{id:"spawner",generated:1b,sound_id:"magical_addons:block.spawner.step",sound_pitch:1.0}}}}
forceload remove ~ ~