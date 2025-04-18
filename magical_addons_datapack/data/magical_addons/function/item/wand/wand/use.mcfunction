# item:wand/wand/use
# called by: item:wand/mainhand, item:wand/offhand

execute anchored eyes run summon marker ^ ^ ^ {Tags:[maddons.wand,maddons.magic]}
playsound magical_addons:item.generic.spell.cast player @a ~ ~ ~ 1
execute as @n[tag=maddons.wand,type=marker,tag=!maddons.summoned] at @s run function magical_addons:item/wand/wand/register