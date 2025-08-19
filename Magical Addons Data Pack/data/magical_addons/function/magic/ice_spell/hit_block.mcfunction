# magic:ice_spell/hit_block
# called by: magic:ice_spell/loop

kill

particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
playsound magical_addons:item.generic.spell.dispel player @a ~ ~ ~ 1

execute positioned ~ ~ ~ unless block ~ ~ ~ #magical_addons:air_like run setblock ~ ~ ~ ice
execute positioned ~ ~ ~1 unless block ~ ~ ~ #magical_addons:air_like run setblock ~ ~ ~ ice
execute positioned ~ ~ ~-1 unless block ~ ~ ~ #magical_addons:air_like run setblock ~ ~ ~ ice
execute positioned ~ ~1 ~ unless block ~ ~ ~ #magical_addons:air_like run setblock ~ ~ ~ ice
execute positioned ~ ~1 ~1 unless block ~ ~ ~ #magical_addons:air_like run setblock ~ ~ ~ ice
execute positioned ~ ~1 ~-1 unless block ~ ~ ~ #magical_addons:air_like run setblock ~ ~ ~ ice
execute positioned ~ ~-1 ~ unless block ~ ~ ~ #magical_addons:air_like run setblock ~ ~ ~ ice
execute positioned ~ ~-1 ~1 unless block ~ ~ ~ #magical_addons:air_like run setblock ~ ~ ~ ice
execute positioned ~ ~-1 ~-1 unless block ~ ~ ~ #magical_addons:air_like run setblock ~ ~ ~ ice
execute positioned ~1 ~ ~ unless block ~ ~ ~ #magical_addons:air_like run setblock ~ ~ ~ ice
execute positioned ~1 ~ ~1 unless block ~ ~ ~ #magical_addons:air_like run setblock ~ ~ ~ ice
execute positioned ~1 ~ ~-1 unless block ~ ~ ~ #magical_addons:air_like run setblock ~ ~ ~ ice
execute positioned ~1 ~1 ~ unless block ~ ~ ~ #magical_addons:air_like run setblock ~ ~ ~ ice
execute positioned ~1 ~1 ~1 unless block ~ ~ ~ #magical_addons:air_like run setblock ~ ~ ~ ice
execute positioned ~1 ~1 ~-1 unless block ~ ~ ~ #magical_addons:air_like run setblock ~ ~ ~ ice
execute positioned ~1 ~-1 ~ unless block ~ ~ ~ #magical_addons:air_like run setblock ~ ~ ~ ice
execute positioned ~1 ~-1 ~1 unless block ~ ~ ~ #magical_addons:air_like run setblock ~ ~ ~ ice
execute positioned ~1 ~-1 ~-1 unless block ~ ~ ~ #magical_addons:air_like run setblock ~ ~ ~ ice
execute positioned ~-1 ~ ~ unless block ~ ~ ~ #magical_addons:air_like run setblock ~ ~ ~ ice
execute positioned ~-1 ~ ~1 unless block ~ ~ ~ #magical_addons:air_like run setblock ~ ~ ~ ice
execute positioned ~-1 ~ ~-1 unless block ~ ~ ~ #magical_addons:air_like run setblock ~ ~ ~ ice
execute positioned ~-1 ~1 ~ unless block ~ ~ ~ #magical_addons:air_like run setblock ~ ~ ~ ice
execute positioned ~-1 ~1 ~1 unless block ~ ~ ~ #magical_addons:air_like run setblock ~ ~ ~ ice
execute positioned ~-1 ~1 ~-1 unless block ~ ~ ~ #magical_addons:air_like run setblock ~ ~ ~ ice
execute positioned ~-1 ~-1 ~ unless block ~ ~ ~ #magical_addons:air_like run setblock ~ ~ ~ ice
execute positioned ~-1 ~-1 ~1 unless block ~ ~ ~ #magical_addons:air_like run setblock ~ ~ ~ ice
execute positioned ~-1 ~-1 ~-1 unless block ~ ~ ~ #magical_addons:air_like run setblock ~ ~ ~ ice