# entity:player_display/sleep/check_yellow_bed
# called by: entity:player_display/check_global

execute if block ~ ~ ~ yellow_bed[facing=south] run setblock ~ ~ ~ yellow_bed[part=head,facing=south,occupied=true]
execute if block ~ ~ ~ yellow_bed[facing=north] run setblock ~ ~ ~ yellow_bed[part=head,facing=north,occupied=true]
execute if block ~ ~ ~ yellow_bed[facing=east] run setblock ~ ~ ~ yellow_bed[part=head,facing=east,occupied=true]
execute if block ~ ~ ~ yellow_bed[facing=west] run setblock ~ ~ ~ yellow_bed[part=head,facing=west,occupied=true]