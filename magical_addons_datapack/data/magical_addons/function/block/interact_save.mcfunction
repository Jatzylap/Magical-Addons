# block:interact_save
# called by: block:interact_start

## Ancient portal
$execute unless dimension the_nether unless dimension the_aether unless dimension the_end positioned ^ ^ ^$(Distance) if block ~ ~ ~ fire if block ~ ~-1 ~ reinforced_deepslate align xyz positioned ~.5 ~.5 ~.5 summon marker run function magical_addons:dungeon/ancient_portal/identify
$execute unless dimension the_nether unless dimension the_aether unless dimension the_end positioned ^ ^ ^$(Distance) positioned ^ ^ ^.01 if block ~ ~ ~ fire if block ~ ~-1 ~ reinforced_deepslate align xyz positioned ~.5 ~.5 ~.5 summon marker run function magical_addons:dungeon/ancient_portal/identify