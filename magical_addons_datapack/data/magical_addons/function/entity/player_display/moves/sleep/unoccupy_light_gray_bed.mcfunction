# entity:player_display/sleep/check_light_gray_bed
# called by: entity:player_display/check_global

execute if block ~ ~ ~ light_gray_bed[facing=south] run setblock ~ ~ ~ light_gray_bed[part=head,facing=south,occupied=false]
execute if block ~ ~ ~ light_gray_bed[facing=north] run setblock ~ ~ ~ light_gray_bed[part=head,facing=north,occupied=false]
execute if block ~ ~ ~ light_gray_bed[facing=east] run setblock ~ ~ ~ light_gray_bed[part=head,facing=east,occupied=false]
execute if block ~ ~ ~ light_gray_bed[facing=west] run setblock ~ ~ ~ light_gray_bed[part=head,facing=west,occupied=false]