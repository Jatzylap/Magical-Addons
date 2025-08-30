# entity:kill
# called by: player:tick, entity:*/moves/death/1, item:*/break

execute on passengers run kill
execute on passengers run data merge entity @s {Health:0.0f,DeathTime:19s}
execute on vehicle run kill
execute on vehicle run data merge entity @s {Health:0.0f,DeathTime:19s}
execute on vehicle on passengers run kill
execute on vehicle on passengers run data merge entity @s {Health:0.0f,DeathTime:19s}
kill @s