# main:tick
# called by: #minecraft:tick

## Copy list
data modify storage magical_addons:temp data.registry set from storage magical_addons:registry data.entities

## Get length of list 
execute store result score #maddons.entity_count maddons.registry run data get storage magical_addons:temp data.registry

## Run tick (use temp storage as its list stays fixed unlike registry storage)
execute if score #maddons.entity_count maddons.registry matches 1.. run function magical_addons:main/tick_cycle