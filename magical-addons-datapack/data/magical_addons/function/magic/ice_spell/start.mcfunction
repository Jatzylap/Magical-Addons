# magic:ice_spell/start
# called by: item:*/disambiguation

execute anchored eyes run summon item_display ^ ^ ^ {data:{magical_addons:{tick_cmd:"function magical_addons:magic/ice_spell/loop"}},CustomName:{"translate":"enchantment.magical_addons.ice_spell"},item_display:"head",brightness:{sky:15,block:15},teleport_duration:3,billboard:"center",item:{id:trial_spawner,components:{custom_model_data:{colors:[[0,1,1]]},item_model:"magical_addons:particle/spell"}},Tags:[maddons.invul,maddons.ice_spell,maddons.magic,maddons.entity.tickable]}

playsound magical_addons:item.generic.spell.cast player @a ~ ~ ~ 1

tag @s add maddons.entity.spell.selected
execute as @n[tag=maddons.ice_spell,type=item_display,tag=!maddons.summoned] at @s run function magical_addons:magic/ice_spell/register
tag @s remove maddons.entity.spell.selected