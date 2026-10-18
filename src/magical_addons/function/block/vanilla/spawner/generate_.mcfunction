# block:vanilla/spawner/generate_
# called by: block:vanilla/spawner/generate

$execute positioned $(x) $(y) $(z) positioned ~ ~.5 ~ unless data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{}}}} summon item_display run data merge entity @s {transformation:{scale:[-1f,1f,-1f]},data:{magical_addons:{id:"spawner",break_cmd:"execute unless block ~ ~ ~ spawner run function magical_addons:block/vanilla/spawner/break"}},item:{id:"spawner"},Tags:[maddons.block,maddons.vanilla,maddons.spawner]}
$execute positioned $(x) $(y) $(z) unless data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{}}}} run data merge block ~ ~ ~ {components:{custom_data:{magical_addons:{id:"spawner",generated:1b,sound:"playsound magical_addons:block.spawner.step block @a ~ ~ ~ 0.15"}}}}