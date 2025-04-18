# entity:player_display/sleep/check_orange_bed
# called by: entity:player_display/check_global

execute if block ~ ~ ~ orange_bed[facing=south] run setblock ~ ~ ~ orange_bed[part=head,facing=south,occupied=false]
execute if block ~ ~ ~ orange_bed[facing=north] run setblock ~ ~ ~ orange_bed[part=head,facing=north,occupied=false]
execute if block ~ ~ ~ orange_bed[facing=east] run setblock ~ ~ ~ orange_bed[part=head,facing=east,occupied=false]
execute if block ~ ~ ~ orange_bed[facing=west] run setblock ~ ~ ~ orange_bed[part=head,facing=west,occupied=false]