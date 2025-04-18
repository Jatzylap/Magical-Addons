# entity:player_display/sleep/check_white_bed
# called by: entity:player_display/check_global

execute if block ~ ~ ~ white_bed[facing=south] run setblock ~ ~ ~ white_bed[part=head,facing=south,occupied=false]
execute if block ~ ~ ~ white_bed[facing=north] run setblock ~ ~ ~ white_bed[part=head,facing=north,occupied=false]
execute if block ~ ~ ~ white_bed[facing=east] run setblock ~ ~ ~ white_bed[part=head,facing=east,occupied=false]
execute if block ~ ~ ~ white_bed[facing=west] run setblock ~ ~ ~ white_bed[part=head,facing=west,occupied=false]