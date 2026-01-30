# magic:earth_spell/hit_block
# called by: magic:earth_spell/loop

kill

particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
playsound magical_addons:item.generic.spell.dispel player @a ~ ~ ~ 1
