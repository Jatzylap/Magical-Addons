# entity:player_display/sleep/check_brown_bed
# called by: entity:player_display/check_global

execute if block ~ ~ ~ brown_bed[facing=south] run setblock ~ ~ ~ brown_bed[part=head,facing=south,occupied=true]
execute if block ~ ~ ~ brown_bed[facing=north] run setblock ~ ~ ~ brown_bed[part=head,facing=north,occupied=true]
execute if block ~ ~ ~ brown_bed[facing=east] run setblock ~ ~ ~ brown_bed[part=head,facing=east,occupied=true]
execute if block ~ ~ ~ brown_bed[facing=west] run setblock ~ ~ ~ brown_bed[part=head,facing=west,occupied=true]