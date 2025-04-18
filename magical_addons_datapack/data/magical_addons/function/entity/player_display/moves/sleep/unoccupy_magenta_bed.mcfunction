# entity:player_display/sleep/check_magenta_bed
# called by: entity:player_display/check_global

execute if block ~ ~ ~ magenta_bed[facing=south] run setblock ~ ~ ~ magenta_bed[part=head,facing=south,occupied=false]
execute if block ~ ~ ~ magenta_bed[facing=north] run setblock ~ ~ ~ magenta_bed[part=head,facing=north,occupied=false]
execute if block ~ ~ ~ magenta_bed[facing=east] run setblock ~ ~ ~ magenta_bed[part=head,facing=east,occupied=false]
execute if block ~ ~ ~ magenta_bed[facing=west] run setblock ~ ~ ~ magenta_bed[part=head,facing=west,occupied=false]