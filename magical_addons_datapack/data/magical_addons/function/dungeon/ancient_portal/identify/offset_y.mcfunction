# dungeon:ancient_portal/identify/offset_y
# called by: dungeon:ancient_portal/identify

execute store result entity @s data.offset_y int 1 unless block ~ ~-1 ~ obsidian run scoreboard players remove @s maddons.temp 1
execute unless score @s maddons.temp matches ..-23 positioned ~ ~-1 ~ unless block ~ ~ ~ obsidian run function magical_addons:dungeon/ancient_portal/identify/offset_y