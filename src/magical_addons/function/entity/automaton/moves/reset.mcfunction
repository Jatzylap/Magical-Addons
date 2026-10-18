# magical_addons:entity/automaton/animate/reset
# called by: magical_addons:entity/automaton/animate/*

execute on vehicle on vehicle run attribute @s movement_speed modifier remove magical_addons:stop

## Reset flags
tag @s[tag=maddons.entity.brain] remove maddons.entity.attack
tag @s[tag=maddons.entity.brain] remove maddons.shoot
tag @s[tag=maddons.entity.brain] remove maddons.spin
tag @s[tag=maddons.entity.brain] remove maddons.pound

## Reset animation
tag @s[tag=!maddons.entity.brain] remove maddons.entity.tickable
scoreboard players reset @s maddons.cooldown
scoreboard players reset @s maddons.animation
item modify entity @s contents {"function": "minecraft:set_custom_model_data","floats": {"values":[0,0],"mode":"replace_section","size":1,"offset":0}}
data remove entity @s[tag=!maddons.entity.brain] data
execute on vehicle on passengers as @s[tag=maddons.bone] run data merge entity @s {start_interpolation:-1,interpolation_duration:1,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
data merge entity @s[tag=maddons.entity.brain] {data:{magical_addons:{tick_cmd:"function magical_addons:entity/automaton/tick",attack:{id:""}}}}