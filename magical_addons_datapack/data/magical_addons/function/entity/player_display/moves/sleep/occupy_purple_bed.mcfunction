# entity:player_display/sleep/check_purple_bed
# called by: entity:player_display/check_global

execute if block ~ ~ ~ purple_bed[facing=south] run setblock ~ ~ ~ purple_bed[part=head,facing=south,occupied=true]
execute if block ~ ~ ~ purple_bed[facing=north] run setblock ~ ~ ~ purple_bed[part=head,facing=north,occupied=true]
execute if block ~ ~ ~ purple_bed[facing=east] run setblock ~ ~ ~ purple_bed[part=head,facing=east,occupied=true]
execute if block ~ ~ ~ purple_bed[facing=west] run setblock ~ ~ ~ purple_bed[part=head,facing=west,occupied=true]