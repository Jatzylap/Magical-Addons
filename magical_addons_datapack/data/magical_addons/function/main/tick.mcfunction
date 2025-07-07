# main:tick
# called by: #minecraft:tick

## Get total
execute store result storage magical_addons:temp data.registry.register_count int 1 store result score #maddons.entities maddons.registry run data get storage magical_addons:registry data.entities

## Subtract 1 (prevents main/tick_cycle from running 1 extra time)
execute store result storage magical_addons:temp data.registry.register_count int 1 run scoreboard players operation #maddons.entities maddons.registry -= #1 maddons.constant

## Run tick (use temp storage as its list stays fixed unlike registry storage)
execute if score #maddons.entities maddons.registry matches 0.. run function magical_addons:main/tick_cycle with storage magical_addons:temp data.registry