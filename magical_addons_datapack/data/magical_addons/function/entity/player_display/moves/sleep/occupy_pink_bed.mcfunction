# entity:player_display/sleep/check_pink_bed
# called by: entity:player_display/check_global

execute if block ~ ~ ~ pink_bed[facing=south] run setblock ~ ~ ~ pink_bed[part=head,facing=south,occupied=true]
execute if block ~ ~ ~ pink_bed[facing=north] run setblock ~ ~ ~ pink_bed[part=head,facing=north,occupied=true]
execute if block ~ ~ ~ pink_bed[facing=east] run setblock ~ ~ ~ pink_bed[part=head,facing=east,occupied=true]
execute if block ~ ~ ~ pink_bed[facing=west] run setblock ~ ~ ~ pink_bed[part=head,facing=west,occupied=true]