# block:custom/ruby_ore/place
# called by: block:place

## Sound
execute if entity @s[advancements={magical_addons:---/block/place=true}] if data block ~ ~ ~ {components:{"minecraft:custom_data":{magical_addons:{id:"ruby_ore"}}}} run playsound block.stone.place block @a ~ ~ ~ 1 .6

## Block
execute unless block ~ ~ ~ chiseled_bookshelf run setblock ~ ~ ~ chiseled_bookshelf[facing=north,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=true]{components:{block_state:{"facing":"north","slot_0_occupied":"false","slot_1_occupied":"false","slot_2_occupied":"true","slot_3_occupied":"false","slot_4_occupied":"false","slot_5_occupied":"true"},custom_model_data:84,custom_data:{magical_addons:{sound:1b,sound_id:"block.stone.step",id:"ruby_ore",properties:{light:"red"}}}}}

## Light => Red
execute if predicate magical_addons:block/visible unless entity @e[distance=..1.5,type=item_display,tag=maddons.light] run summon item_display ~ ~ ~ {Tags:[maddons.block,maddons.vanilla,maddons.cullable,maddons.persistent,maddons.light,maddons.redstone_ores],item:{id:"minecraft:lime_stained_glass",count:1,components:{item_model:"magical_addons:misc/light/red"}},item_display:"head",shadow_strength:0f}