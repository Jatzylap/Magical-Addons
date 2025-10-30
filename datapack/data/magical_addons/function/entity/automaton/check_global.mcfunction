# entity:automaton/check_global
# called by: main:one_second

## Despawning
execute at @s unless predicate magical_addons:shared/riding_vehicle run return run function magical_addons:entity/kill
execute at @s[y=-99,dy=-9999] unless predicate magical_addons:shared/riding_vehicle run return run function magical_addons:entity/kill

## Bossbar
function magical_addons:entity/automaton/bossbar with entity @s data.magical_addons

## Music
execute as @a[distance=..64] run effect clear @s darkness
tag @a[distance=..64] add maddons.boss.automaton

## Rotate head
execute on vehicle at @s unless entity @s[nbt={NoAI:1b}] on passengers if entity @s[tag=maddons.entity,tag=!maddons.automaton.shoot] on passengers run rotate @s[tag=maddons.head] ~ 0