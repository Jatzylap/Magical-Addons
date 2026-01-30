# magic:earth_spell/start
# called by: item:*/disambiguation

execute anchored eyes run summon item_display ^ ^ ^ {item:{id:spawner,components:{item_model:"air"}},data:{magical_addons:{tick_cmd:"function magical_addons:magic/earth_spell/loop"}},CustomName:{"translate":"enchantment.magical_addons.earth_spell"},Tags:[maddons.invul,maddons.earth_spell,maddons.magic,maddons.entity.tickable]}

playsound entity.evoker.prepare_attack player @a ~ ~ ~ 1

tag @s add maddons.entity.spell.selected
execute as @n[tag=maddons.earth_spell,type=item_display,tag=!maddons.summoned] at @s run function magical_addons:magic/earth_spell/register
tag @s remove maddons.entity.spell.selected