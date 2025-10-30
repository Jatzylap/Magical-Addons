# dungeon:aether_portal/check_frame
# called by: dungeon:aether_portal/scan

## facing=north
execute unless dimension minecraft:the_nether unless dimension minecraft:the_end \
		if block ~ ~ ~ white_bed[part=foot,facing=north] \
		if block ~ ~-1 ~ spawner{components:{"minecraft:custom_data":{magical_addons:{id:"sparkstone"}}}} \
		if block ~ ~-1 ~-1 spawner{components:{"minecraft:custom_data":{magical_addons:{id:"sparkstone"}}}} run return run function magical_addons:block/custom/aether_portal/generate_north

## facing=south
execute unless dimension minecraft:the_nether unless dimension minecraft:the_end \
		if block ~ ~ ~ white_bed[part=foot,facing=south] \
		if block ~ ~-1 ~ spawner{components:{"minecraft:custom_data":{magical_addons:{id:"sparkstone"}}}} \
		if block ~ ~-1 ~1 spawner{components:{"minecraft:custom_data":{magical_addons:{id:"sparkstone"}}}} run return run function magical_addons:block/custom/aether_portal/generate_south

## facing=east
execute unless dimension minecraft:the_nether unless dimension minecraft:the_end \
		if block ~ ~ ~ white_bed[part=foot,facing=east] \
		if block ~ ~-1 ~ spawner{components:{"minecraft:custom_data":{magical_addons:{id:"sparkstone"}}}} \
		if block ~1 ~-1 ~ spawner{components:{"minecraft:custom_data":{magical_addons:{id:"sparkstone"}}}} run return run function magical_addons:block/custom/aether_portal/generate_east

## facing=west
execute unless dimension minecraft:the_nether unless dimension minecraft:the_end \
		if block ~ ~ ~ white_bed[part=foot,facing=west] \
		if block ~ ~-1 ~ spawner{components:{"minecraft:custom_data":{magical_addons:{id:"sparkstone"}}}} \
		if block ~-1 ~-1 ~ spawner{components:{"minecraft:custom_data":{magical_addons:{id:"sparkstone"}}}} run function magical_addons:block/custom/aether_portal/generate_west