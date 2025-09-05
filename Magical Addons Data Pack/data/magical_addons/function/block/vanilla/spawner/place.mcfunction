# block:vanilla/spawner/place
# called by: block:place

## Sound
execute if entity @s[advancements={magical_addons:---/block/place/spawner=true}] run playsound magical_addons:block.spawner.place block @a ~ ~ ~ 1 .6

## Block
summon item_display ~ ~ ~ {data:{magical_addons:{id:"spawner",cmd:"execute unless block ~ ~ ~ spawner run function magical_addons:block/vanilla/spawner/break"}},item:{id:"spawner",Tags:[maddons.block,maddons.vanilla,maddons.spawner]}
data merge block ~ ~ ~ {components:{custom_data:{magical_addons:{id:"spawner",generated:1b,sound:"playsound magical_addons:block.spawner.step block @a ~ ~ ~ 1"}}}}