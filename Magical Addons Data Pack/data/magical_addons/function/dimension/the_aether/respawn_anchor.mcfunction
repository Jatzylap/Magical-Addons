# dimension:the_aether/respawn_anchor
# called by: dimension:the_aether/return

$execute if data entity @s {SpawnDimension:"minecraft:the_aether"} in the_aether if block $(x) $(y) $(z) respawn_anchor unless block $(x) $(y) $(z) respawn_anchor[charges=0] run return 1

$execute in the_aether run forceload remove $(x) $(z)

return 0