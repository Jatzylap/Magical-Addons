# entity:kill
# called by: player:loop, entity:*/death_loop, item:*/break

execute on vehicle on passengers run kill @s[tag=!maddons.entity]
execute on vehicle on passengers run data merge entity @s[tag=!maddons.entity] {Health:0.0f,DeathTime:19s}
execute on passengers run kill
execute on passengers run data merge entity @s {Health:0.0f,DeathTime:19s}
execute on vehicle run kill
execute on vehicle run data merge entity @s {Health:0.0f,DeathTime:19s}
kill
data merge entity @s {Health:0.0f,DeathTime:19s}