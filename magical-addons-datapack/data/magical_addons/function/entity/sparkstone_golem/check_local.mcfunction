# entity:sparkstone_golem/check_local
# called by: main:half_second

## Light
execute if block ~ ~ ~ #magical_addons:translucent on vehicle on passengers run data remove entity @s brightness
execute unless block ~ ~ ~ #magical_addons:translucent on vehicle on passengers run function magical_addons:entity/light

## Flags
execute on vehicle on vehicle if data entity @s {NoAI:1b} on passengers on passengers run tag @s[tag=maddons.bone.body] remove maddons.entity.ai
execute on vehicle on vehicle unless data entity @s {NoAI:1b} on passengers on passengers run tag @s[tag=maddons.bone.body] add maddons.entity.ai
execute on vehicle on vehicle if predicate magical_addons:entity/sparkstone_golem_step at @s[tag=!maddons.entity.land] if data entity @s {OnGround:0b} run tag @s add maddons.entity.jump

## Ambient sound
execute if entity @s[tag=!maddons.entity.silent] if predicate magical_addons:shared/5_percent at @s as @a run playsound magical_addons:entity.sparkstone_golem.ambient hostile @a ~ ~ ~ 0.25