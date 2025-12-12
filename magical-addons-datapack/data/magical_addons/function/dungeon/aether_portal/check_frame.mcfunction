# dungeon:aether_portal/check_frame
# called by: dungeon:aether_portal/scan

## facing=north
execute if block ~ ~ ~ #magical_addons:aether_portal[part=foot,facing=north] run return run function magical_addons:block/custom/aether_portal/generate_north

## facing=south
execute if block ~ ~ ~ #magical_addons:aether_portal[part=foot,facing=south] run return run function magical_addons:block/custom/aether_portal/generate_south

## facing=east
execute if block ~ ~ ~ #magical_addons:aether_portal[part=foot,facing=east] run return run function magical_addons:block/custom/aether_portal/generate_east

## facing=west
execute if block ~ ~ ~ #magical_addons:aether_portal[part=foot,facing=west] run function magical_addons:block/custom/aether_portal/generate_west