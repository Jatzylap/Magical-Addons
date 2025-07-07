# block:vanilla/spawner/generate_the_end
# called by: dimension:the_end/worldgen/set_blocks

execute in the_end unless data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{}}}} run summon item_display ~ ~ ~ {item:{id:"spawner",components:{custom_data:{magical_addons:{id:"spawner",cmd:"execute unless block ~ ~ ~ spawner run function magical_addons:block/vanilla/spawner/break"}}}},Tags:[maddons.block,maddons.vanilla,maddons.spawner]}
execute in the_end unless data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{}}}} run data merge block ~ ~ ~ {components:{custom_data:{magical_addons:{id:"spawner",generated:1b,sound_id:"magical_addons:block.spawner.step",sound_pitch:1.0}}}}
forceload remove ~ ~