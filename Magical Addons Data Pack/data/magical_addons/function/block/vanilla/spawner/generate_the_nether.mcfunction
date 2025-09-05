# block:vanilla/spawner/generate_the_nether
# called by: dimension:the_nether/worldgen/set_blocks

execute in the_nether unless data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{}}}} run summon item_display ~ ~ ~ {data:{magical_addons:{id:"spawner",break_cmd:"execute unless block ~ ~ ~ spawner run function magical_addons:block/vanilla/spawner/break"}},item:{id:"spawner"},Tags:[maddons.block,maddons.vanilla,maddons.spawner]}
execute in the_nether unless data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{}}}} run data merge block ~ ~ ~ {components:{custom_data:{magical_addons:{id:"spawner",generated:1b,sound:"playsound magical_addons:block.spawner.step block @a ~ ~ ~ 1"}}}}
forceload remove ~ ~