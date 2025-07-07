# main:unregister_cycle
# called by: main:one_second

$function magical_addons:main/unregister_entity with storage magical_addons:registry data.entities[$(unregister_count)]

execute store result storage magical_addons:temp data.registry.unregister_count int 1 run scoreboard players remove #maddons.main.unregister maddons.registry 1

execute if score #maddons.main.unregister maddons.registry matches 0.. run function magical_addons:main/unregister_cycle with storage magical_addons:temp data.registry