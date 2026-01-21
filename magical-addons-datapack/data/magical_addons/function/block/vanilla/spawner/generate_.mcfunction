# block:vanilla/spawner/generate_
# called by: block:vanilla/spawner/generate

$execute positioned $(x) $(y) $(z) positioned ~ ~.5 ~ unless data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{}}}} run summon item_display ~ ~ ~ {data:{magical_addons:{id:"trial_spawner",break_cmd:"execute unless block ~ ~ ~ trial_spawner run function magical_addons:block/vanilla/spawner/break"}},item:{id:"trial_spawner"},Tags:[maddons.block,maddons.vanilla,maddons.spawner]}
$execute positioned $(x) $(y) $(z) positioned ~ ~.5 ~ unless data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{}}}} run data merge block ~ ~ ~ {components:{custom_data:{magical_addons:{id:"trial_spawner",generated:1b,sound:"playsound magical_addons:block.spawner.step block @a ~ ~ ~ 1"}}}}