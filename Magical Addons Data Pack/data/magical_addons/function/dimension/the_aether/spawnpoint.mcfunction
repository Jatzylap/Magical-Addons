# dimension:the_aether/spawnpoint
# called by: dimension:the_aether/test_return

$execute in overworld positioned $(x) ~ $(z) run forceload add ~ ~
$execute in overworld positioned $(x) $(y) $(z) run tp @s[tag=!maddons.death] ~ ~ ~
$execute in overworld positioned $(x) $(y) $(z) run spawnpoint
$execute in overworld positioned $(x) ~ $(z) run forceload remove ~ ~

data remove storage magical_addons:temp data.last_overworld_pos