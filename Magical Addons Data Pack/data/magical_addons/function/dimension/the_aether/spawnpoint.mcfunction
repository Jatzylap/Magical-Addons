# dimension:the_aether/spawnpoint
# called by advancement : dimension:aether_return_bed
# called by: dimension:the_aether/return

$execute in overworld positioned $(x) ~ $(z) run forceload add ~ ~
$execute in overworld positioned $(x) $(y) $(z) run tp @s[tag=!maddons.death] ~ ~ ~
$execute in overworld positioned $(x) $(y) $(z) unless block ~ ~ ~ #minecraft:beds run tellraw @s ["",{"translate":"block.minecraft.bed.obstructed"}]
$execute in overworld positioned $(x) $(y) $(z) run spawnpoint
$execute in overworld positioned $(x) ~ $(z) run forceload remove ~ ~

data remove storage magical_addons:temp data.last_overworld_pos