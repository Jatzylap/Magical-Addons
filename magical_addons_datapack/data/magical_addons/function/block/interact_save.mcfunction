# block:interact_save
# called by: block:interact_start

## Ancient portal
$execute if dimension the_aether positioned ^ ^ ^$(Distance) if block ~ ~ ~ fire if block ~ ~-1 ~ obsidian align xyz positioned ~.5 ~.5 ~.5 summon marker run function magical_addons:dungeon/ancient_portal/identify
$execute if dimension the_aether positioned ^ ^ ^$(Distance) positioned ^ ^ ^.01 if block ~ ~ ~ fire if block ~ ~-1 ~ obsidian align xyz positioned ~.5 ~.5 ~.5 summon marker run function magical_addons:dungeon/ancient_portal/identify