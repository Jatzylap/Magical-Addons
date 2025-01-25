# main:first
# called by: main:init

title @a[tag=!magical_addons] times 40 30 40
title @a[tag=!magical_addons] title [""]
title @a[tag=!magical_addons] subtitle ["\uE011"]
stopsound @a[tag=!magical_addons] * magical_addons:ui.pack.title

## Pack installed
execute as @a[tag=!magical_addons] at @s unless dimension the_achlys run playsound magical_addons:ui.pack.title master @s ~ ~ ~ 10000
execute as @a[tag=!magical_addons] at @s if dimension the_achlys run playsound magical_addons:ui.pack.title player @s ~ ~ ~ 10000

## Execute loops
schedule function magical_addons:main/one_second 1s
schedule function magical_addons:main/two_seconds 2s
schedule function magical_addons:main/one_minute 60s