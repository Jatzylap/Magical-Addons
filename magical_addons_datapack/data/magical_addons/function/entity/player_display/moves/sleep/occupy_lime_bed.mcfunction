# entity:player_display/sleep/check_lime_bed
# called by: entity:player_display/check_global

execute if block ~ ~ ~ lime_bed[facing=south] run setblock ~ ~ ~ lime_bed[part=head,facing=south,occupied=true]
execute if block ~ ~ ~ lime_bed[facing=north] run setblock ~ ~ ~ lime_bed[part=head,facing=north,occupied=true]
execute if block ~ ~ ~ lime_bed[facing=east] run setblock ~ ~ ~ lime_bed[part=head,facing=east,occupied=true]
execute if block ~ ~ ~ lime_bed[facing=west] run setblock ~ ~ ~ lime_bed[part=head,facing=west,occupied=true]