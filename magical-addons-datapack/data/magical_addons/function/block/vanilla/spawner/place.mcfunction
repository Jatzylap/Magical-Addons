# block:vanilla/spawner/place
# called by: block:place

## Sound
execute if entity @s[advancements={magical_addons:---/block/place/spawner=true}] run playsound magical_addons:block.spawner.place block @a ~ ~ ~ 1

## Block
execute summon item_display run data merge entity @s {transformation:{scale:[-1f,1f,-1f]},data:{magical_addons:{id:"spawner",break_cmd:"execute unless block ~ ~ ~ spawner run function magical_addons:block/vanilla/spawner/break"}},item:{id:"spawner"},Tags:[maddons.block,maddons.vanilla,maddons.spawner]}
data merge block ~ ~ ~ {components:{custom_data:{magical_addons:{id:"spawner",generated:1b,sound:"playsound magical_addons:block.spawner.step block @a ~ ~ ~ 0.15"}}}}