# magic:commanding_spell/start
# called by: item:*/disambiguation

## Reset
scoreboard players reset @s maddons.commanding_spell

## Stop spell
execute if entity @s[tag=maddons.using_commanding_spell] run return run tag @s add maddons.commanding_spell.stop

## Start spell
tag @s add maddons.spell.caster
execute anchored eyes positioned ^ ^ ^ run function magical_addons:magic/commanding_spell/cast
execute anchored eyes positioned ^ ^ ^ run playsound block.beacon.power_select player @a ~ ~ ~ 0.5 2
tag @s remove maddons.spell.caster