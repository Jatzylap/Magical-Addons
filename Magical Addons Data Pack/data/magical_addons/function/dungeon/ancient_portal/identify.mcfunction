# dungeon:ancient_portal/identify
# called by: block:interact

## Reset
execute store result entity @s data.offset_x int 1 store result entity @s data.offset_y int 1 store result entity @s data.offset_z int 1 run scoreboard players set @s maddons.temp 0

## Find offsets
function magical_addons:dungeon/ancient_portal/identify/offset_y
scoreboard players set @s maddons.temp 0
function magical_addons:dungeon/ancient_portal/identify/offset_x with entity @s data
scoreboard players set @s maddons.temp 0
function magical_addons:dungeon/ancient_portal/identify/offset_z with entity @s data

## Build
function magical_addons:dungeon/ancient_portal/build with entity @s data

kill @s