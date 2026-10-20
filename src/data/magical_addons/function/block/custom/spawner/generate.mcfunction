# block:custom/spawner/generate
# called by: dev:custom_block_to_entity

execute align xyz positioned ~.5 ~.5 ~.5 summon item_display run data merge entity @s {transformation:{scale:[-1f,1f,-1f]},data:{magical_addons:{id:"spawner",break_cmd:"execute unless block ~ ~ ~ spawner run function magical_addons:block/vanilla/spawner/break"}},item:{id:"spawner"},Tags:[maddons.block,maddons.vanilla,maddons.spawner]}

execute align xyz positioned ~.5 ~.5 ~.5 run setblock ~ ~ ~ spawner{components:{custom_data:{magical_addons:{id:"spawner",generated:1b,sound:"playsound magical_addons:block.spawner.step block @a ~ ~ ~ 0.15"}}}}