# entity:automaton/moves/punch
# called by: entity:automaton/attack

## Play sound
execute on vehicle on vehicle at @s as @a run playsound magical_addons:entity.automaton.short_punch hostile @a

## Set flags
tag @s add maddons.entity.attack

## Set animation
execute on vehicle on passengers as @s[tag=maddons.bone.arms] run scoreboard players set @s maddons.cooldown 30
execute on vehicle on passengers as @s[tag=maddons.bone.arms] run scoreboard players set @s maddons.animation -1
execute on vehicle on passengers as @s[tag=maddons.bone.arms] run data modify entity @s item.components."minecraft:custom_model_data".floats[0] set value 5f
execute on vehicle on passengers as @s[tag=maddons.bone.arms] run data merge entity @s {data:{magical_addons:{tick_cmd:"function magical_addons:entity/automaton/animate/punch",attack:{id:"punch"}}}}
execute on vehicle on passengers as @s[tag=maddons.bone.arms] run tag @s add maddons.entity.tickable