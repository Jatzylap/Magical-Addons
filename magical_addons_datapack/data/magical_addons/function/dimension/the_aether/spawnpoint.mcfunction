# dimension:the_aether/spawnpoint
# called by advancement : dimension:aether_return_bed
# called by: dimension:overworld/loop

$execute in overworld run tp @s[tag=!maddons.death] $(x) $(y) $(z)
$execute in overworld run spawnpoint @s $(x) $(y) $(z)