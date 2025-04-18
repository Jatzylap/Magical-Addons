# entity:player_display/sleep/check_green_bed
# called by: entity:player_display/check_global

execute if block ~ ~ ~ green_bed[facing=south] run setblock ~ ~ ~ green_bed[part=head,facing=south,occupied=true]
execute if block ~ ~ ~ green_bed[facing=north] run setblock ~ ~ ~ green_bed[part=head,facing=north,occupied=true]
execute if block ~ ~ ~ green_bed[facing=east] run setblock ~ ~ ~ green_bed[part=head,facing=east,occupied=true]
execute if block ~ ~ ~ green_bed[facing=west] run setblock ~ ~ ~ green_bed[part=head,facing=west,occupied=true]