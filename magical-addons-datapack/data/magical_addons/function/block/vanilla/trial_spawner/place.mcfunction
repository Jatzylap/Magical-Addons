# block:vanilla/trial_spawner/place
# called by: block:place

## Sound
execute if entity @s[advancements={magical_addons:---/block/place/trial_spawner=true}] run playsound magical_addons:block.trial_spawner.place block @a ~ ~ ~ 1 .6

## Block
execute summon item_display run data merge entity @s {transformation:{scale:[0.999,0.999,0.999]},data:{magical_addons:{id:"trial_spawner",break_cmd:"execute unless block ~ ~ ~ trial_spawner run function magical_addons:block/vanilla/trial_spawner/break"}},item:{id:"trial_spawner"},Tags:[maddons.block,maddons.vanilla,maddons.trial_spawner]}
data merge block ~ ~ ~ {components:{custom_data:{magical_addons:{id:"trial_spawner",generated:1b,sound:"playsound magical_addons:block.trial_spawner.step block @a ~ ~ ~ 1"}}}}