# magic:damaging_spell/hit_block
# called by: magic:damaging_spell/hit

particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
playsound magical_addons:item.generic.spell.dispel player @a ~ ~ ~ 1

execute as @e[type=!#magical_addons:invulnerable,tag=!maddons.invul,distance=..3] at @s run damage @s 6.0 minecraft:magic by @n[type=item_display,tag=maddons.damaging_spell]

kill