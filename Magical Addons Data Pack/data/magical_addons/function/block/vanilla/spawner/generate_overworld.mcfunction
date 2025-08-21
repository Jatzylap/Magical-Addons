# block:vanilla/spawner/generate_overworld
# called by: dimension:overworld/worldgen/set_blocks

execute in overworld unless data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{}}}} run summon item_display ~ ~ ~ {item:{id:"spawner",components:{custom_data:{magical_addons:{id:"spawner",cmd:"execute unless block ~ ~ ~ spawner run function magical_addons:block/vanilla/spawner/break"}}}},Tags:[maddons.block,maddons.vanilla,maddons.spawner]}
execute in overworld unless data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{}}}} run data merge block ~ ~ ~ {components:{custom_data:{magical_addons:{id:"spawner",generated:1b,sound:"playsound magical_addons:block.spawner.step block @a ~ ~ ~ 1"}}}}
forceload remove ~ ~