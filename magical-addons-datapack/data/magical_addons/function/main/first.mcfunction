# main:first
# called by: main:init

execute if data storage magical_addons:config {"disable_world_greeting":false} run title @a[tag=!magical_addons] times 40 30 40
execute if data storage magical_addons:config {"disable_world_greeting":false} run title @a[tag=!magical_addons] title [""]
execute if data storage magical_addons:config {"disable_world_greeting":false} run title @a[tag=!magical_addons] subtitle ["\uE011"]
execute if data storage magical_addons:config {"disable_world_greeting":false} run stopsound @a[tag=!magical_addons] master magical_addons:ui.pack.title

## Pack installed
execute if data storage magical_addons:config {"disable_world_greeting":false} as @a[tag=!magical_addons] at @s run playsound magical_addons:ui.pack.title master @s ~ ~ ~ 10000

## Execute loops
schedule function magical_addons:main/four_ticks 4
schedule function magical_addons:main/half_second 10
schedule function magical_addons:main/one_second 1s
schedule function magical_addons:main/two_seconds 2s
schedule function magical_addons:main/ten_seconds 10s