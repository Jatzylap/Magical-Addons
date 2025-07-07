# block:custom/skyroot_leaves/place
# called by: block:custom/skyroot_leaves/place

## Sound
execute if entity @s[advancements={magical_addons:---/block/place/skyroot_leaves=true}] run playsound block.grass.place block @a ~ ~ ~ 1 .8

## Block
execute summon item_display run data merge entity @s {transformation:{scale:[-1,1,-1]},Rotation:[0f,0f],item_display:"head",item:{id:"spawner",components:{"minecraft:item_model":"magical_addons:skyroot_leaves","minecraft:custom_data":{magical_addons:{properties:{persistent:1b,tree:"skyroot"},group:"leaves",id:"skyroot_leaves",cmd:"execute unless block ~ ~ ~ spawner{components:{\"minecraft:custom_data\":{magical_addons:{id:skyroot_leaves}}}} run function magical_addons:block/custom/skyroot_leaves/break"}}}},view_range:64,Tags:[maddons.block,maddons.skyroot_leaves,maddons.block.leaves]}
data modify block ~ ~ ~ components."minecraft:custom_data".magical_addons.generated set value 1b