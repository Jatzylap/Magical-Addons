# magic:commanding_spell/cast
# called by: magic:commanding_spell/start

## Distance
scoreboard players add @s maddons.commanding_spell 1

## Block
execute positioned ^ ^ ^1 unless block ~ ~ ~ #magical_addons:uncontrollable run return run function magical_addons:magic/commanding_spell/hit_block

## Entity
execute positioned ~-0.05 ~-0.05 ~-0.05 as @n[type=!#magical_addons:uncontrollable,tag=!maddons.spell.caster,tag=!maddons.block,dx=0] positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] run tag @s add maddons.target_entity
execute if entity @n[type=!#magical_addons:uncontrollable,tag=maddons.target_entity] run function magical_addons:magic/commanding_spell/hit_entity

## Continue
execute unless entity @n[tag=maddons.target_entity] positioned ^ ^ ^1 if block ~ ~ ~ #magical_addons:non_collidable unless score @s maddons.commanding_spell matches 64.. run function magical_addons:magic/commanding_spell/cast
tag @n[tag=maddons.target_entity] remove maddons.target_entity