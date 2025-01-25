# item:wand/wand/hit_entity
# called by: item:wand/wand/loop

kill
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
playsound magical_addons:item.generic.spell.resonate player @a ~ ~ ~ 1
effect give @n[tag=maddons.spell.hit] levitation 1 0