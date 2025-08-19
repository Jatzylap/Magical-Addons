# magic:lightning_spell/hit_block
# called by: magic:lightning_spell/loop

playsound magical_addons:item.generic.spell.resonate player @a ~ ~ ~ 1

tag @s add maddons.found_target

execute if block ~ ~4 ~ #magical_addons:non_collidable run return run tp @s ~ ~4 ~ ~ 90
execute if block ~ ~3.5 ~ #magical_addons:non_collidable run return run tp @s ~ ~3.5 ~ ~ 90
execute if block ~ ~3 ~ #magical_addons:non_collidable run return run tp @s ~ ~3 ~ ~ 90
execute if block ~ ~2.5 ~ #magical_addons:non_collidable run return run tp @s ~ ~2.5 ~ ~ 90
execute if block ~ ~2 ~ #magical_addons:non_collidable run return run tp @s ~ ~2 ~ ~ 90
execute if block ~ ~1.5 ~ #magical_addons:non_collidable run return run tp @s ~ ~1.5 ~ ~ 90
execute if block ~ ~1 ~ #magical_addons:non_collidable run return run tp @s ~ ~1 ~ ~ 90
execute if block ~ ~.5 ~ #magical_addons:non_collidable run return run tp @s ~ ~.5 ~ ~ 90
execute if block ~ ~ ~ #magical_addons:non_collidable run return run tp @s ~ ~ ~ ~ 90