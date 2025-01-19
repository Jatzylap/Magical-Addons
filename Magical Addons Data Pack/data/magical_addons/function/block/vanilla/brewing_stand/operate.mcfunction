# block:brewing_stand/operate
# called by: block:operate

#execute at @s unless data block ~ ~ ~ {BrewTime:0s} if data block ~ ~ ~ {Items:[{Slot:3b,tag:{CustomModelData:1}}]} run tag @s add kt.br3w
#execute at @s[tag=kt.br3w] store result score @s kt.cooldown run data get block ~ ~ ~ BrewTime
#execute at @s[tag=kt.br3w,scores={kt.cooldown=1..}] unless data block ~ ~ ~ {Items:[{Slot:3b,tag:{CustomModelData:1}}]} run tag @s remove kt.br3w
#
## Vial of Refined Sparkstone
#execute at @s[tag=kt.br3w,scores={kt.cooldown=0}] run data modify block ~ ~ ~ Items[{Slot:0b,id:"minecraft:potion",tag:{Potion:"minecraft:regeneration"}}] set value {Slot:0b,id:"wolf_spawn_egg",Count:1,tag:{Enchantments:[{}],EntityTag:{Tags:["0.1","kt.sparkstone_vial"],id:"marker"},CustomModelData:1,display:{Name:'[{"text":"Vial of Refined Sparkstone","color":"yellow","italic":false}]',Lore:['{"text":"Contains liquid Sparkstone","color":"gray","italic":false}']}}}
#execute at @s[tag=kt.br3w,scores={kt.cooldown=0}] run data modify block ~ ~ ~ Items[{Slot:1b,id:"minecraft:potion",tag:{Potion:"minecraft:regeneration"}}] set value {Slot:1b,id:"wolf_spawn_egg",Count:1,tag:{Enchantments:[{}],EntityTag:{Tags:["0.1","kt.sparkstone_vial"],id:"marker"},CustomModelData:1,display:{Name:'[{"text":"Vial of Refined Sparkstone","color":"yellow","italic":false}]',Lore:['{"text":"Contains liquid Sparkstone","color":"gray","italic":false}']}}}
#execute at @s[tag=kt.br3w,scores={kt.cooldown=0}] run data modify block ~ ~ ~ Items[{Slot:2b,id:"minecraft:potion",tag:{Potion:"minecraft:regeneration"}}] set value {Slot:2b,id:"wolf_spawn_egg",Count:1,tag:{Enchantments:[{}],EntityTag:{Tags:["0.1","kt.sparkstone_vial"],id:"marker"},CustomModelData:1,display:{Name:'[{"text":"Vial of Refined Sparkstone","color":"yellow","italic":false}]',Lore:['{"text":"Contains liquid Sparkstone","color":"gray","italic":false}']}}}
#execute at @s[tag=kt.brewing_stand] if data block ~ ~ ~ {BrewTime:0s,Items:[{Slot:0b,id:"minecraft:wolf_spawn_egg",Count:1b,tag:{CustomModelData:1}}]} run tag @s add kt.br3w0
#execute at @s[tag=kt.brewing_stand] if data block ~ ~ ~ {BrewTime:0s,Items:[{Slot:1b,id:"minecraft:wolf_spawn_egg",Count:1b,tag:{CustomModelData:1}}]} run tag @s add kt.br3w1
#execute at @s[tag=kt.brewing_stand] if data block ~ ~ ~ {BrewTime:0s,Items:[{Slot:2b,id:"minecraft:wolf_spawn_egg",Count:1b,tag:{CustomModelData:1}}]} run tag @s add kt.br3w2
#execute at @s[tag=kt.br3w0] if data block ~ ~ ~ {BrewTime:0s} unless data block ~ ~ ~ {Items:[{Slot:0b,id:"minecraft:wolf_spawn_egg",Count:1b,tag:{CustomModelData:1}}]} run advancement grant @a[distance=..6] only magical_addons:brew_sparkstone
#execute at @s[tag=kt.br3w1] if data block ~ ~ ~ {BrewTime:0s} unless data block ~ ~ ~ {Items:[{Slot:1b,id:"minecraft:wolf_spawn_egg",Count:1b,tag:{CustomModelData:1}}]} run advancement grant @a[distance=..6] only magical_addons:brew_sparkstone
#execute at @s[tag=kt.br3w2] if data block ~ ~ ~ {BrewTime:0s} unless data block ~ ~ ~ {Items:[{Slot:2b,id:"minecraft:wolf_spawn_egg",Count:1b,tag:{CustomModelData:1}}]} run advancement grant @a[distance=..6] only magical_addons:brew_sparkstone
#execute at @s[tag=kt.br3w0] if data block ~ ~ ~ {BrewTime:0s} unless data block ~ ~ ~ {Items:[{Slot:0b,id:"minecraft:wolf_spawn_egg",Count:1b,tag:{CustomModelData:1}}]} run tag @s remove kt.br3w0
#execute at @s[tag=kt.br3w1] if data block ~ ~ ~ {BrewTime:0s} unless data block ~ ~ ~ {Items:[{Slot:1b,id:"minecraft:wolf_spawn_egg",Count:1b,tag:{CustomModelData:1}}]} run tag @s remove kt.br3w1
#execute at @s[tag=kt.br3w2] if data block ~ ~ ~ {BrewTime:0s} unless data block ~ ~ ~ {Items:[{Slot:2b,id:"minecraft:wolf_spawn_egg",Count:1b,tag:{CustomModelData:1}}]} run tag @s remove kt.br3w2
#
## Potion of Lucidity
#execute at @s[tag=kt.br3w,scores={kt.cooldown=0}] run data modify block ~ ~ ~ Items[{Slot:0b,id:"minecraft:potion",tag:{Potion:"minecraft:leaping"}}] set value {Slot:0b,id:"potion",Count:1,tag:{CustomPotionColor:16777215,Enchantments:[{}],HideFlags:54,display:{Lore:['{"text":"Preserves your items when dreaming","color":"gray","italic":false}','{"text":"Best consumed before bed","color":"gray","italic":false}'],Name:'{"text":"Potion of Lucidity","color":"white","italic":false}'},LucidityPotion:1}}
#execute at @s[tag=kt.br3w,scores={kt.cooldown=0}] run data modify block ~ ~ ~ Items[{Slot:1b,id:"minecraft:potion",tag:{Potion:"minecraft:leaping"}}] set value {Slot:1b,id:"potion",Count:1,tag:{CustomPotionColor:16777215,Enchantments:[{}],HideFlags:54,display:{Lore:['{"text":"Preserves your items when dreaming","color":"gray","italic":false}','{"text":"Best consumed before bed","color":"gray","italic":false}'],Name:'{"text":"Potion of Lucidity","color":"white","italic":false}'},LucidityPotion:1}}
#execute at @s[tag=kt.br3w,scores={kt.cooldown=0}] run data modify block ~ ~ ~ Items[{Slot:2b,id:"minecraft:potion",tag:{Potion:"minecraft:leaping"}}] set value {Slot:2b,id:"potion",Count:1,tag:{CustomPotionColor:16777215,Enchantments:[{}],HideFlags:54,display:{Lore:['{"text":"Preserves your items when dreaming","color":"gray","italic":false}','{"text":"Best consumed before bed","color":"gray","italic":false}'],Name:'{"text":"Potion of Lucidity","color":"white","italic":false}'},LucidityPotion:1}}
#execute at @s[tag=kt.brewing_stand] if data block ~ ~ ~ {BrewTime:0s,Items:[{Slot:0b,id:"minecraft:potion",Count:1b,tag:{LucidityPotion:1}}]} run tag @s add kt.br3w0
#execute at @s[tag=kt.brewing_stand] if data block ~ ~ ~ {BrewTime:0s,Items:[{Slot:1b,id:"minecraft:potion",Count:1b,tag:{LucidityPotion:1}}]} run tag @s add kt.br3w1
#execute at @s[tag=kt.brewing_stand] if data block ~ ~ ~ {BrewTime:0s,Items:[{Slot:2b,id:"minecraft:potion",Count:1b,tag:{LucidityPotion:1}}]} run tag @s add kt.br3w2
#execute at @s[tag=kt.br3w0] if data block ~ ~ ~ {BrewTime:0s} unless data block ~ ~ ~ {Items:[{Slot:0b,id:"minecraft:potion",Count:1b,tag:{LucidityPotion:1}}]} run advancement grant @a[distance=..6] only magical_addons:brew_moonstone
#execute at @s[tag=kt.br3w1] if data block ~ ~ ~ {BrewTime:0s} unless data block ~ ~ ~ {Items:[{Slot:1b,id:"minecraft:potion",Count:1b,tag:{LucidityPotion:1}}]} run advancement grant @a[distance=..6] only magical_addons:brew_moonstone
#execute at @s[tag=kt.br3w2] if data block ~ ~ ~ {BrewTime:0s} unless data block ~ ~ ~ {Items:[{Slot:2b,id:"minecraft:potion",Count:1b,tag:{LucidityPotion:1}}]} run advancement grant @a[distance=..6] only magical_addons:brew_moonstone
#execute at @s[tag=kt.br3w0] if data block ~ ~ ~ {BrewTime:0s} unless data block ~ ~ ~ {Items:[{Slot:0b,id:"minecraft:potion",Count:1b,tag:{LucidityPotion:1}}]} run tag @s remove kt.br3w0
#execute at @s[tag=kt.br3w1] if data block ~ ~ ~ {BrewTime:0s} unless data block ~ ~ ~ {Items:[{Slot:1b,id:"minecraft:potion",Count:1b,tag:{LucidityPotion:1}}]} run tag @s remove kt.br3w1
#execute at @s[tag=kt.br3w2] if data block ~ ~ ~ {BrewTime:0s} unless data block ~ ~ ~ {Items:[{Slot:2b,id:"minecraft:potion",Count:1b,tag:{LucidityPotion:1}}]} run tag @s remove kt.br3w2
#
#execute at @s[tag=kt.brewing_stand] if data block ~ ~ ~ {BrewTime:0s} run scoreboard players reset @s kt.cooldown
#execute at @s[tag=kt.br3w] if data block ~ ~ ~ {BrewTime:0s} run tag @s remove kt.br3w

execute unless block ~ ~ ~ brewing_stand run kill