# block:vanilla/brewing_stand/tick
# called by: main:tick_cycle
# registered by: main:two_seconds

## Potion of Sparkstone
execute if data block ~ ~ ~ {BrewTime:0s} if items block ~ ~ ~ container.* minecraft:potion[potion_contents={potion:"minecraft:regeneration"}] run advancement grant @p only magical_addons:aether/brew_sparkstone_potion
execute if data block ~ ~ ~ {BrewTime:0s} if items block ~ ~ ~ container.0 minecraft:potion[potion_contents={potion:"minecraft:regeneration"}] run function magical_addons:block/vanilla/brewing_stand/set_potion {slot:0,potion:"sparkstone_potion"} 
execute if data block ~ ~ ~ {BrewTime:0s} if items block ~ ~ ~ container.1 minecraft:potion[potion_contents={potion:"minecraft:regeneration"}] run function magical_addons:block/vanilla/brewing_stand/set_potion {slot:1,potion:"sparkstone_potion"}
execute if data block ~ ~ ~ {BrewTime:0s} if items block ~ ~ ~ container.2 minecraft:potion[potion_contents={potion:"minecraft:regeneration"}] run function magical_addons:block/vanilla/brewing_stand/set_potion {slot:2,potion:"sparkstone_potion"}

## Splash potion of Sparkstone
execute if data block ~ ~ ~ {BrewTime:0s} if items block ~ ~ ~ container.* minecraft:splash_potion[potion_contents={potion:"minecraft:regeneration"}] run advancement grant @p only magical_addons:aether/brew_sparkstone_potion
execute if data block ~ ~ ~ {BrewTime:0s} if items block ~ ~ ~ container.0 minecraft:splash_potion[potion_contents={potion:"minecraft:regeneration"}] run function magical_addons:block/vanilla/brewing_stand/set_potion {slot:0,potion:"sparkstone_splash_potion"} 
execute if data block ~ ~ ~ {BrewTime:0s} if items block ~ ~ ~ container.1 minecraft:splash_potion[potion_contents={potion:"minecraft:regeneration"}] run function magical_addons:block/vanilla/brewing_stand/set_potion {slot:1,potion:"sparkstone_splash_potion"}
execute if data block ~ ~ ~ {BrewTime:0s} if items block ~ ~ ~ container.2 minecraft:splash_potion[potion_contents={potion:"minecraft:regeneration"}] run function magical_addons:block/vanilla/brewing_stand/set_potion {slot:2,potion:"sparkstone_splash_potion"}

## Lingering potion of Sparkstone 
execute if data block ~ ~ ~ {BrewTime:0s} if items block ~ ~ ~ container.* minecraft:lingering_potion[potion_contents={potion:"minecraft:regeneration"}] run advancement grant @p only magical_addons:aether/brew_sparkstone_potion
execute if data block ~ ~ ~ {BrewTime:0s} if items block ~ ~ ~ container.0 minecraft:lingering_potion[potion_contents={potion:"minecraft:regeneration"}] run function magical_addons:block/vanilla/brewing_stand/set_potion {slot:0,potion:"sparkstone_lingering_potion"} 
execute if data block ~ ~ ~ {BrewTime:0s} if items block ~ ~ ~ container.1 minecraft:lingering_potion[potion_contents={potion:"minecraft:regeneration"}] run function magical_addons:block/vanilla/brewing_stand/set_potion {slot:1,potion:"sparkstone_lingering_potion"}
execute if data block ~ ~ ~ {BrewTime:0s} if items block ~ ~ ~ container.2 minecraft:lingering_potion[potion_contents={potion:"minecraft:regeneration"}] run function magical_addons:block/vanilla/brewing_stand/set_potion {slot:2,potion:"sparkstone_lingering_potion"}

execute if data block ~ ~ ~ {BrewTime:0s} run function magical_addons:dev/unregister_entity with block ~ ~ ~ components."minecraft:custom_data"