# item:wand/ancient_staff/use
# called by: item:wand/mainhand, item:wand/offhand

#execute anchored eyes run summon marker ^ ^ ^ {Tags:[maddons.wand,maddons.magic]}
#playsound magical_addons:item.generic.spell.cast player @a ~ ~ ~ 1
#execute as @n[tag=maddons.ancient_staff,type=marker,tag=!maddons.summoned] at @s run function magical_addons:item/wand/ancient_staff/register