# main:first
# called by: main:init

title @a[tag=!magical_addons] times 40 30 40
title @a[tag=!magical_addons] title [""]
title @a[tag=!magical_addons] subtitle ["\uE011"]
stopsound @a[tag=!magical_addons] * magical_addons:ui.pack.title

## Pack installed
execute as @a[tag=!magical_addons] at @s run playsound magical_addons:ui.pack.title master @s ~ ~ ~ 10000

## Execute loops
schedule function magical_addons:main/half_second 10
schedule function magical_addons:main/one_second 1s
schedule function magical_addons:main/two_seconds 2s
schedule function magical_addons:main/two_minutes 120s