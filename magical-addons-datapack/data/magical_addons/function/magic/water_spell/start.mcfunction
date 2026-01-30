# magic:water_spell/start
# called by: item:*/disambiguation

<<<<<<< HEAD
execute anchored eyes run summon item_display ^ ^ ^ {data:{magical_addons:{tick_cmd:"function magical_addons:magic/water_spell/loop"}},CustomName:{"translate":"enchantment.magical_addons.water_spell"},item_display:"head",brightness:{sky:15,block:15},teleport_duration:3,billboard:"center",item:{id:spawner,components:{custom_model_data:{colors:[[0.0,0.5,0.5]]},item_model:"magical_addons:particle/spell"}},Tags:[maddons.invul,maddons.water_spell,maddons.magic,maddons.entity.tickable]}
=======
execute anchored eyes run summon item_display ^ ^ ^ {data:{magical_addons:{tick_cmd:"function magical_addons:magic/water_spell/loop"}},CustomName:{"translate":"enchantment.magical_addons.water_spell"},item_display:"head",brightness:{sky:15,block:15},teleport_duration:3,billboard:"center",item:{id:trial_spawner,components:{custom_model_data:{colors:[[0.0,0.5,0.5]]},item_model:"magical_addons:particle/spell"}},Tags:[maddons.invul,maddons.water_spell,maddons.magic,maddons.entity.tickable]}
>>>>>>> a589b49e6627dabbcaed38d9e213cd7b418921a2

playsound magical_addons:item.generic.spell.cast player @a ~ ~ ~ 1

tag @s add maddons.entity.spell.selected
execute as @n[tag=maddons.water_spell,type=item_display,tag=!maddons.summoned] at @s run function magical_addons:magic/water_spell/register
tag @s remove maddons.entity.spell.selected