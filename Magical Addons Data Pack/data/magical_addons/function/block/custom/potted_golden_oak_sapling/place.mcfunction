# block:custom/potted_golden_oak_sapling/place
# called by: item:golden_oak_sapling/use

## Clear item
item modify entity @s[gamemode=!creative] weapon.mainhand magical_addons:item/consume

## Break (if replaced with same block)
execute if entity @n[type=#magical_addons:display,tag=maddons.golden_oak_sapling,distance=...5] run loot spawn ~ ~ ~ loot magical_addons:blocks/potted_golden_oak_sapling
execute as @n[type=#magical_addons:display,tag=maddons.potted_golden_oak_sapling,distance=...5] at @s on passengers run kill
execute as @n[type=#magical_addons:display,tag=maddons.potted_golden_oak_sapling,distance=...5] run kill

## Block
summon block_display ~ ~ ~ {block_state:{Name:"flower_pot"},data:{magical_addons:{id:"potted_golden_oak_sapling",cmd:"execute unless block ~ ~ ~ structure_void run function magical_addons:block/custom/potted_golden_oak_sapling/break"}},Passengers:[{count:1,id:item_display,item:{id:"spawner",components:{"minecraft:item_model":"magical_addons:golden_oak_sapling","minecraft:custom_model_data":{strings:["block"]}}},view_range:64}],Tags:[maddons.block,maddons.potted_golden_oak_sapling]}
data merge entity @n[type=#magical_addons:display,tag=maddons.potted_golden_oak_sapling,distance=...5] {transformation:{translation:[-0.5,-0.5,-0.5]}}
execute as @n[type=#magical_addons:display,tag=maddons.potted_golden_oak_sapling,distance=...5] at @s on passengers run data merge entity @s {transformation:{scale:[0.75,0.75,0.75],translation:[0.0,0.13,0.0]}}
setblock ~ ~ ~ structure_void