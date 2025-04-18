# entity:player_display/sleep/check_blue_bed
# called by: entity:player_display/check_global

execute if block ~ ~ ~ blue_bed[facing=south] run setblock ~ ~ ~ blue_bed[part=head,facing=south,occupied=true]
execute if block ~ ~ ~ blue_bed[facing=north] run setblock ~ ~ ~ blue_bed[part=head,facing=north,occupied=true]
execute if block ~ ~ ~ blue_bed[facing=east] run setblock ~ ~ ~ blue_bed[part=head,facing=east,occupied=true]
execute if block ~ ~ ~ blue_bed[facing=west] run setblock ~ ~ ~ blue_bed[part=head,facing=west,occupied=true]