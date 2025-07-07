# main:tick_cycle
# called by: main:tick

$function magical_addons:main/tick_entity with storage magical_addons:registry data.entities[$(register_count)]

execute store result storage magical_addons:temp data.registry.register_count int 1 run scoreboard players remove #maddons.entities maddons.registry 1

execute if score #maddons.entities maddons.registry matches 0.. run function magical_addons:main/tick_cycle with storage magical_addons:temp data.registry