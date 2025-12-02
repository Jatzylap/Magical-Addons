# dungeon:aether_portal/check_frame
# called by: dungeon:aether_portal/scan

## facing=north
execute unless dimension minecraft:the_nether unless dimension minecraft:the_end \
		if block ~ ~ ~ #magical_addons:aether_portal[part=foot,facing=north] run return run function magical_addons:block/custom/aether_portal/generate_north

## facing=south
execute unless dimension minecraft:the_nether unless dimension minecraft:the_end \
		if block ~ ~ ~ #magical_addons:aether_portal[part=foot,facing=south] run return run function magical_addons:block/custom/aether_portal/generate_south

## facing=east
execute unless dimension minecraft:the_nether unless dimension minecraft:the_end \
		if block ~ ~ ~ #magical_addons:aether_portal[part=foot,facing=east] run return run function magical_addons:block/custom/aether_portal/generate_east

## facing=west
execute unless dimension minecraft:the_nether unless dimension minecraft:the_end \
		if block ~ ~ ~ #magical_addons:aether_portal[part=foot,facing=west] run function magical_addons:block/custom/aether_portal/generate_west