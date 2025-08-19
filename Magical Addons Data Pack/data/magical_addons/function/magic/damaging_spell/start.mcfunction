# magic:damaging_spell/start
# called by: item:*/disambiguation

execute anchored eyes run summon item_display ^ ^ ^ {CustomName:{"translate":"enchantment.magical_addons.damaging_spell"},item_display:"head",brightness:{sky:15,block:15},teleport_duration:3,billboard:"center",item:{id:spawner,components:{custom_model_data:{colors:[[0.5,0.0,1.0]]},item_model:"magical_addons:particle/spell"}},Tags:[maddons.invul,maddons.damaging_spell,maddons.magic]}

playsound magical_addons:item.generic.spell.cast player @a ~ ~ ~ 1

tag @s add maddons.entity.spell.selected
execute as @n[tag=maddons.damaging_spell,type=item_display,tag=!maddons.summoned] at @s run function magical_addons:magic/damaging_spell/register
tag @s remove maddons.entity.spell.selected