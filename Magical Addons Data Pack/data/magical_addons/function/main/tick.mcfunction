# main:tick
# called by: #minecraft:tick

execute store result score #maddons.entities maddons.registry run data get storage maddons.main:registry data.entities

execute store result storage maddons.main:registry data.temp.count int 1 run scoreboard players operation #maddons.entities maddons.registry -= #1 maddons.constant

execute if score #maddons.entities maddons.registry matches 0.. run function magical_addons:main/tick_cycle with storage maddons.main:registry data.temp