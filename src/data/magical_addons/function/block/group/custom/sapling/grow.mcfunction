# block:group/custom/sapling/grow
# called by: main:one_second

execute unless predicate magical_addons:block/skylit run return 0

$execute if entity @s[tag=maddons.block.sapling] run function magical_addons:block/custom/$(id)/grow