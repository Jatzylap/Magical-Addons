# dungeon:ancient_portal/identify/offset_z
# called by: dungeon:ancient_portal/identify

$execute store result entity @s data.offset_z int 1 positioned ~ ~-1 ~ if block ~ ~$(offset_y) ~ obsidian positioned ~ ~1 ~ unless block ~ ~ ~-1 obsidian run scoreboard players remove @s maddons.temp 1
$execute unless score @s maddons.temp matches ..-23 positioned ~ ~-1 ~ if block ~ ~$(offset_y) ~ obsidian positioned ~ ~1 ~-1 unless block ~ ~ ~ obsidian run function magical_addons:dungeon/ancient_portal/identify/offset_z with entity @s data