# main:tick
# called by: #minecraft:tick

## Copy list
data modify storage magical_addons:temp data.tick set from storage magical_addons:tick data.entities

## Get length of list 
execute store result score #maddons.entity_count maddons.tick run data get storage magical_addons:temp data.tick

## Run tick (use temp storage as its list stays fixed unlike registry storage)
execute if score #maddons.entity_count maddons.tick matches 1.. run function magical_addons:main/tick_cycle