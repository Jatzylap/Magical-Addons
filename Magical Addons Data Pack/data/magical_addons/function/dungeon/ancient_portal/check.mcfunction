# dungeon:ancient_portal/check
# called by: main:one_second

## Custom particle
particle entity_effect{color:[1,1,0,1]} ~ ~ ~ 1 1 0 1 0
#execute if entity @s[tag=maddons.achlys_portal] run particle enchant ^ ^ ^-.5 0 0.5 0 1 1

## Destroy
execute if entity @s[tag=x] run function magical_addons:dungeon/ancient_portal/destroy/from_x
execute if entity @s[tag=z] run function magical_addons:dungeon/ancient_portal/destroy/from_z