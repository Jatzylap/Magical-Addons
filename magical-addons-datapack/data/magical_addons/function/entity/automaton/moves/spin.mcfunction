# entity:automaton/moves/spin
# called by: entity:automaton/attack

## Play sound
execute on vehicle on vehicle at @s as @a run playsound magical_addons:entity.automaton.attack hostile @a

## Cease motion
execute on vehicle on vehicle run attribute @s movement_speed modifier add magical_addons:stop -9999 add_value
execute on vehicle on vehicle run data merge entity @s {Motion:[0.0d,0.0d,0.0d]}

## Set flags
tag @s add maddons.entity.attack
tag @s add maddons.spin

## Set animation
execute on vehicle on passengers run scoreboard players set @s maddons.cooldown 242
execute on vehicle on passengers run scoreboard players set @s maddons.animation -1
execute on vehicle on passengers run data modify entity @s[tag=!maddons.bone.legs] item.components."minecraft:custom_model_data".floats[0] set value 4f
execute on vehicle on passengers run data merge entity @s {data:{magical_addons:{tick_cmd:"function magical_addons:entity/automaton/animate/spin",attack:{id:"spin"}}}}
execute on vehicle on passengers run tag @s add maddons.entity.tickable