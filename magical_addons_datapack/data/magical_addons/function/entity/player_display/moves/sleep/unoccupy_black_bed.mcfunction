# entity:player_display/sleep/check_black_bed
# called by: entity:player_display/check_global

execute if block ~ ~ ~ black_bed[facing=south] run setblock ~ ~ ~ black_bed[part=head,facing=south,occupied=false]
execute if block ~ ~ ~ black_bed[facing=north] run setblock ~ ~ ~ black_bed[part=head,facing=north,occupied=false]
execute if block ~ ~ ~ black_bed[facing=east] run setblock ~ ~ ~ black_bed[part=head,facing=east,occupied=false]
execute if block ~ ~ ~ black_bed[facing=west] run setblock ~ ~ ~ black_bed[part=head,facing=west,occupied=false]