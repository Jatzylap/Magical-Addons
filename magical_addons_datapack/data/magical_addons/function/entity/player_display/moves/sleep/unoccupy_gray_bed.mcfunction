# entity:player_display/sleep/check_gray_bed
# called by: entity:player_display/check_global

execute if block ~ ~ ~ gray_bed[facing=south] run setblock ~ ~ ~ gray_bed[part=head,facing=south,occupied=false]
execute if block ~ ~ ~ gray_bed[facing=north] run setblock ~ ~ ~ gray_bed[part=head,facing=north,occupied=false]
execute if block ~ ~ ~ gray_bed[facing=east] run setblock ~ ~ ~ gray_bed[part=head,facing=east,occupied=false]
execute if block ~ ~ ~ gray_bed[facing=west] run setblock ~ ~ ~ gray_bed[part=head,facing=west,occupied=false]