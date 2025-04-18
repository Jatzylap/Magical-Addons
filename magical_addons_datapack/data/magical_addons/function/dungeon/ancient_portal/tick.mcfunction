# dungeon:ancient_portal/tick
# called by: main:one_second

particle enchant ~ ~ ~ 1 1 0 1 1

## Destroy
execute if entity @s[tag=x] run function magical_addons:dungeon/ancient_portal/destroy/from_x
execute if entity @s[tag=z] run function magical_addons:dungeon/ancient_portal/destroy/from_z