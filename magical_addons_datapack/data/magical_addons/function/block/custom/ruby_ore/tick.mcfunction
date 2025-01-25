# block:custom/ruby_ore/tick
# called by: block:tick

execute if predicate magical_addons:block/visible unless entity @e[distance=..1.5,type=item_display,tag=maddons.light] run summon item_display ~ ~ ~ {Tags:[maddons.block,maddons.cullable,maddons.persistent,maddons.light,maddons.ruby_ore],item:{id:"lime_stained_glass",count:1,components:{item_model:"magical_addons:misc/light",custom_model_data:{colors:[I;16711680]}}},item_display:"head",shadow_strength:0f}

setblock ~ ~ ~ chiseled_bookshelf[facing=north,slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=true]{components:{block_state:{"facing":"north","slot_0_occupied":"false","slot_1_occupied":"false","slot_2_occupied":"true","slot_3_occupied":"false","slot_4_occupied":"false","slot_5_occupied":"true"},custom_model_data:84,custom_data:{magical_addons:{generated:1b,durability:1.0,sound:1b,sound_id:"block.stone.step",id:"ruby_ore",properties:{light:"red"}}}}}