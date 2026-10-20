# magic:water_spell/hit_block
# called by: magic:water_spell/loop

kill

particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
playsound magical_addons:item.generic.spell.dispel player @a ~ ~ ~ 1

fill ~ ~ ~ ~ ~ ~ water replace #magical_addons:non_collidable