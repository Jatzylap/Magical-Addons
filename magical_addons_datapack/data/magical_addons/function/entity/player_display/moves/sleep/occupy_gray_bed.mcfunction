# entity:player_display/sleep/check_gray_bed
# called by: entity:player_display/check_global

execute if block ~ ~ ~ gray_bed[facing=south] run setblock ~ ~ ~ gray_bed[part=head,facing=south,occupied=true]
execute if block ~ ~ ~ gray_bed[facing=north] run setblock ~ ~ ~ gray_bed[part=head,facing=north,occupied=true]
execute if block ~ ~ ~ gray_bed[facing=east] run setblock ~ ~ ~ gray_bed[part=head,facing=east,occupied=true]
execute if block ~ ~ ~ gray_bed[facing=west] run setblock ~ ~ ~ gray_bed[part=head,facing=west,occupied=true]