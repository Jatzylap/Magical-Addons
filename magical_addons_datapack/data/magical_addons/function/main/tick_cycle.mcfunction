# main:tick_cycle
# called by: main:tick

$function magical_addons:main/tick_entity with storage maddons.main:registry data.entities[$(count)]

execute store result storage maddons.main:registry data.temp.count int 1 run scoreboard players remove #maddons.entities maddons.registry 1

execute if score #maddons.entities maddons.registry matches 0.. run function magical_addons:main/tick_cycle with storage maddons.main:registry data.temp