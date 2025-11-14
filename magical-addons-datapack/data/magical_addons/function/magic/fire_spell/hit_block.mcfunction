# magic:fire_spell/hit_block
# called by: magic:fire_spell/loop

kill

particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
playsound magical_addons:item.generic.spell.dispel player @a ~ ~ ~ 1

execute unless block ~ ~-1 ~ #magical_addons:air_like run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 fire replace #magical_addons:non_collidable
fill ^-1 ^-1 ^ ^1 ^1 ^ fire