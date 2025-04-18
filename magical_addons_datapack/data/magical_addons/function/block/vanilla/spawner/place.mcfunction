# block:vanilla/spawner/place
# called by: block:place

## Sound
execute if entity @s[advancements={magical_addons:---/block/place/spawner=true}] run playsound magical_addons:block.spawner.place block @a ~ ~ ~ 1 .6

## Block
summon item_display ~ ~ ~ {item:{id:"spawner",components:{custom_data:{magical_addons:{id:"spawner",block:"spawner",cmd:"function magical_addons:block/vanilla/spawner/break"}}}},Tags:[maddons.block,maddons.persistent,maddons.vanilla,maddons.spawner]}
data merge block ~ ~ ~ {components:{custom_data:{magical_addons:{id:"spawner",generated:1b,sound_id:"magical_addons:block.spawner.step",sound_pitch:1.0}}}}