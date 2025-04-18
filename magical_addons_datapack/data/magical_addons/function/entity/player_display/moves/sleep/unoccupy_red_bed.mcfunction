# entity:player_display/sleep/check_red_bed
# called by: entity:player_display/check_global

execute if block ~ ~ ~ red_bed[facing=south] run setblock ~ ~ ~ red_bed[part=head,facing=south,occupied=false]
execute if block ~ ~ ~ red_bed[facing=north] run setblock ~ ~ ~ red_bed[part=head,facing=north,occupied=false]
execute if block ~ ~ ~ red_bed[facing=east] run setblock ~ ~ ~ red_bed[part=head,facing=east,occupied=false]
execute if block ~ ~ ~ red_bed[facing=west] run setblock ~ ~ ~ red_bed[part=head,facing=west,occupied=false]