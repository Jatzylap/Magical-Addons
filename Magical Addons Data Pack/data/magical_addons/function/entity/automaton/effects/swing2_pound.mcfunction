# entity:automaton/effects/swing2_pound
# called by: entity:automaton/animate/swing2

execute as @e[type=!#magical_addons:boss,tag=!maddons.automaton,distance=..5] at @s run damage @s 10 magic by @n[tag=maddons.automaton,tag=maddons.entity]

execute unless block ~ ~-1 ~ #magical_addons:non_collidable run particle end_rod ~ ~-1 ~ 0 0 0 .5 150 force @a
execute unless block ~ ~-1 ~ #magical_addons:non_collidable run particle explosion ~ ~ ~ 0 0 0 0 2 force @a
execute unless block ~ ~-1 ~ #magical_addons:non_collidable run playsound magical_addons:entity.automaton.slam hostile @a ~ ~ ~ 7

execute unless block ~ ~-1 ~ #magical_addons:non_collidable if entity @s[tag=maddons.phase1] run summon item_display ~ ~ ~ {CustomName:'{"translate":"entity.magical_addons.automaton"}',teleport_duration:2,Tags:[maddons.magic,maddons.invul,maddons.automaton.swing2_spell,spell1],Passengers:[{Count:1,id:area_effect_cloud,Radius:0f,Duration:40}]}
execute unless block ~ ~-1 ~ #magical_addons:non_collidable if entity @s[tag=!maddons.phase1] run summon item_display ~ ~ ~ {CustomName:'{"translate":"entity.magical_addons.automaton"}',teleport_duration:2,Tags:[maddons.magic,maddons.invul,maddons.automaton.swing2_spell,spell2],Passengers:[{Count:1,id:area_effect_cloud,Radius:0f,Duration:40}]}

execute as @n[tag=maddons.automaton.swing2_spell] at @s rotated as @n[tag=maddons.automaton,tag=maddons.entity] run tp @s ~ ~ ~ ~ 0
execute as @n[tag=maddons.automaton.swing2_spell] at @s run function magical_addons:dev/register_entity {tick_cmd:"function magical_addons:entity/automaton/effects/swing2_spell"}