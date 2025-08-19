# magic:commanding_spell/distance
# called by: magic:commanding_spell/loop

## End spell
$execute unless entity $(target) run return run function magical_addons:magic/commanding_spell/stop {cmd1:"return 0",cmd2:"return 0"}
$execute unless items entity @s weapon.* *[enchantments={"magical_addons:commanding_spell":1}] unless items entity @s weapon.* *[custom_data~{magical_addons:{id:"ancient_staff"}},custom_model_data={strings:["commanding"]}] run return run function magical_addons:magic/commanding_spell/stop {cmd1:"attribute $(target) gravity base reset",cmd2:"execute as $(target) run data merge entity @s[tag=!maddons.gravitite] {NoGravity:0b}"}
$execute if entity @s[tag=maddons.commanding_spell.stop] run return run function magical_addons:magic/commanding_spell/stop {cmd1:"attribute $(target) gravity base reset",cmd2:"execute as $(target) run data merge entity @s[tag=!maddons.gravitite] {NoGravity:0b}"}

## Summon cursor
$execute anchored eyes run summon marker ^ ^ ^$(distance) {CustomName:{"translate":"enchantment.magical_addons.commanding_spell"},Tags:[maddons.invul,maddons.commanding_spell_tracker]}

## IF {Motion} === set motion vector
$execute as $(target) unless entity @s[type=player] if data entity @s Motion unless data entity @s {NoAI:1b} at @n[type=marker,tag=maddons.commanding_spell_tracker] run return run function magical_addons:dev/set_motion_vector {power:0.5}

## ELSE {Teleport}
$execute as $(target) at @s run tp @s @n[type=marker,tag=maddons.commanding_spell_tracker]