# item:wand/wand/hit_entity
# called by: item:wand/wand/loop

kill
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
playsound magical_addons:item.generic.spell.resonate player @a ~ ~ ~ 1
effect give @e[type=!#magical_addons:invulnerable,distance=..1] levitation 1 0 