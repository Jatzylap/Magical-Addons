# magical_addons:entity/automaton/brain
# called by: magical_addons:entity/brain

## Death
execute on vehicle on vehicle unless data entity @s {DeathTime:0s} run return run function magical_addons:entity/automaton/death

## Rotate body
execute if entity @s[tag=!maddons.shoot,tag=!maddons.spin,tag=!maddons.pound,tag=!maddons.punch] on vehicle on vehicle at @s on passengers on passengers run rotate @s ~ 0

## Rotate head
execute if entity @s[tag=maddons.entity.ai,tag=!maddons.shoot,tag=!maddons.spin,tag=!maddons.pound] at @s facing entity @n[type=!#magical_addons:invulnerable,tag=!maddons.invul,tag=!maddons.automaton,distance=..64] eyes run rotate @s ~ 0

## Speed
execute store result score #maddons.automaton.motion.x maddons.move on vehicle on vehicle run data get entity @s Motion[0] 1000
execute store result score #maddons.automaton.motion.y maddons.move on vehicle on vehicle run data get entity @s Motion[1] 1000
execute store result score #maddons.automaton.motion.z maddons.move on vehicle on vehicle run data get entity @s Motion[2] 1000
execute if score #maddons.automaton.motion.x maddons.move matches ..-1 run scoreboard players operation #maddons.automaton.motion.x maddons.move *= #-1 maddons.constant
execute if score #maddons.automaton.motion.y maddons.move matches ..-1 run scoreboard players operation #maddons.automaton.motion.y maddons.move *= #-1 maddons.constant
execute if score #maddons.automaton.motion.z maddons.move matches ..-1 run scoreboard players operation #maddons.automaton.motion.z maddons.move *= #-1 maddons.constant
scoreboard players operation #maddons.automaton.motion.x maddons.move += #maddons.automaton.motion.y maddons.move
execute store result score #maddons.automaton.speed maddons.move run scoreboard players operation #maddons.automaton.motion.x maddons.move += #maddons.automaton.motion.z maddons.move

## Step sound
execute unless score @s maddons.cooldown matches 0.. unless score #maddons.automaton.speed maddons.move matches 200.. on vehicle on vehicle run return run data merge entity @s {data:{magical_addons:{sound_time:5}}}
execute unless score @s maddons.cooldown matches 0.. if score #maddons.automaton.speed maddons.move matches 200.. on vehicle on vehicle run data merge entity @s {data:{magical_addons:{sound_time:2}}}