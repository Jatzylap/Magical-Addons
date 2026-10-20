# magical_addons:entity/automaton/moves/punch
# called by: magical_addons:entity/automaton/attack

## Play sound
execute on vehicle on vehicle at @s as @a run playsound magical_addons:entity.automaton.punch hostile @a ~ ~ ~ 1 1.3

## Set flags
tag @s add maddons.entity.attack

## Set animation
execute on vehicle on passengers as @s[tag=maddons.bone.arms] run scoreboard players set @s maddons.cooldown 30
execute on vehicle on passengers as @s[tag=maddons.bone.arms] run scoreboard players set @s maddons.animation -1
execute on vehicle on passengers as @s[tag=maddons.bone.arms] run data merge entity @s {data:{magical_addons:{tick_cmd:"function magical_addons:entity/automaton/animate/punch",attack:{id:"punch"}}}}
execute on vehicle on passengers as @s[tag=maddons.bone.arms] run item modify entity @s contents magical_addons:entity/animate/automaton/attack
execute on vehicle on passengers as @s[tag=maddons.bone.arms] run tag @s add maddons.entity.tickable