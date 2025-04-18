# entity:player_display/sleep/check_cyan_bed
# called by: entity:player_display/check_global

execute if block ~ ~ ~ cyan_bed[facing=south] run setblock ~ ~ ~ cyan_bed[part=head,facing=south,occupied=false]
execute if block ~ ~ ~ cyan_bed[facing=north] run setblock ~ ~ ~ cyan_bed[part=head,facing=north,occupied=false]
execute if block ~ ~ ~ cyan_bed[facing=east] run setblock ~ ~ ~ cyan_bed[part=head,facing=east,occupied=false]
execute if block ~ ~ ~ cyan_bed[facing=west] run setblock ~ ~ ~ cyan_bed[part=head,facing=west,occupied=false]