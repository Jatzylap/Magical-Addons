# magic:wind_spell/start
# called by: item:*/disambiguation

execute anchored eyes run summon item_display ^ ^ ^ {CustomName:{"translate":"enchantment.magical_addons.wind_spell"},item_display:"head",brightness:{sky:15,block:15},teleport_duration:3,billboard:"center",item:{id:spawner,components:{custom_model_data:{colors:[I;16777215]},item_model:"magical_addons:particle/spell"}},Tags:[maddons.invul,maddons.wind_spell,maddons.magic]}

playsound magical_addons:item.generic.spell.cast player @a ~ ~ ~ 1

tag @s add maddons.entity.spell.selected
execute as @n[tag=maddons.wind_spell,type=item_display,tag=!maddons.summoned] at @s run function magical_addons:magic/wind_spell/register
tag @s remove maddons.entity.spell.selected