# block:drop
# called by: block:custom/*/break

## Break (piston)
execute at @s[tag=maddons.sparkstone_cluster] as @e[distance=..1,nbt={Age:1s},type=item] at @s unless data entity @s Thrower run function magical_addons:block/custom/sparkstone_cluster/loot
execute at @s[tag=maddons.cursed_head] as @e[distance=..1,nbt={Age:1s},type=item] at @s unless data entity @s Thrower run function magical_addons:block/custom/cursed_head/loot

## Break (player)
#execute at @s[tag=maddons.sparkstone] as @e[distance=..1,nbt={Age:0s},type=item] at @s unless data entity @s Thrower run function magical_addons:block/custom/sparkstone/loot
#execute at @s[tag=maddons.echostone] as @e[distance=..1,nbt={Age:0s},type=item] at @s unless data entity @s Thrower run function magical_addons:block/custom/echostone/loot
#execute at @s[tag=maddons.moonstone] as @e[distance=..1,nbt={Age:0s},type=item] at @s unless data entity @s Thrower run function magical_addons:block/custom/moonstone/loot
#execute at @s[tag=maddons.wizarding_table] as @e[distance=..1,nbt={Age:0s},type=item,nbt=!{Item:{components:{"minecraft:custom_data":{magical_addons:{id:"sparkstone_orb"}}}}}] at @s unless data entity @s Thrower run function magical_addons:block/custom/wizarding_table/loot
execute at @s[tag=maddons.sparkstone_cluster] as @e[distance=..1,nbt={Age:0s},type=item] at @s unless data entity @s Thrower run function magical_addons:block/custom/sparkstone_cluster/loot
execute at @s[tag=maddons.cursed_head] as @e[distance=..1,nbt={Age:0s},type=item] at @s unless data entity @s Thrower run function magical_addons:block/custom/cursed_head/loot
#execute at @s[tag=maddons.ruby_ore] as @e[distance=..1,nbt={Age:0s},type=item] at @s unless data entity @s Thrower run function magical_addons:block/custom/ruby_ore/loot
#execute at @s[tag=maddons.quartz_ore] as @e[distance=..1,nbt={Age:0s},type=item] at @s unless data entity @s Thrower run function magical_addons:block/custom/quartz_ore/loot