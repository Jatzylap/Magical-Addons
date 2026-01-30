# item:ancient_staff/cast/spell
# called by: item:ancient_staff/disambiguation

## Cast spell (debug: commanding spell starts twice)
$execute if entity @s[tag=!maddons.using_commanding_spell] run function magical_addons:magic/$(spell)/start

## Copy all spells to storage
$data modify storage magical_addons:temp data.ancient_staff.spells set from entity @s $(nbt).components."minecraft:lore"

## Remove last spell
data remove storage magical_addons:temp data.ancient_staff.spells[-1]

## Reset item
$item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/reset

## Get spells 
execute if data storage magical_addons:temp data.ancient_staff.spells[-1].translate run data modify storage magical_addons:temp data.ancient_staff.spell set string storage magical_addons:temp data.ancient_staff.spells[-1].translate 27
$execute if data storage magical_addons:temp data.ancient_staff{spell:"damaging_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/damaging_spell
$execute if data storage magical_addons:temp data.ancient_staff{spell:"lightning_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/lightning_spell
$execute if data storage magical_addons:temp data.ancient_staff{spell:"fire_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/fire_spell
$execute if data storage magical_addons:temp data.ancient_staff{spell:"ice_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/ice_spell
$execute if data storage magical_addons:temp data.ancient_staff{spell:"commanding_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/commanding_spell
$execute if data storage magical_addons:temp data.ancient_staff{spell:"wind_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/wind_spell
$execute if data storage magical_addons:temp data.ancient_staff{spell:"sonic_boom"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/sonic_boom
$execute if data storage magical_addons:temp data.ancient_staff{spell:"water_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/water_spell
$execute if data storage magical_addons:temp data.ancient_staff{spell:"earth_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/earth_spell


data remove storage magical_addons:temp data.ancient_staff.spell
execute if data storage magical_addons:temp data.ancient_staff.spells[0].translate run data modify storage magical_addons:temp data.ancient_staff.spell set from storage magical_addons:temp data.ancient_staff.spells[0].translate
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.damaging_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/damaging_spell/0
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.lightning_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/lightning_spell/0
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.fire_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/fire_spell/0
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.ice_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/ice_spell/0
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.commanding_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/commanding_spell/0
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.wind_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/wind_spell/0
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.sonic_boom"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/sonic_boom/0
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.water_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/water_spell/0
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.earth_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/earth_spell/0


data remove storage magical_addons:temp data.ancient_staff.spell
execute if data storage magical_addons:temp data.ancient_staff.spells[1].translate run data modify storage magical_addons:temp data.ancient_staff.spell set from storage magical_addons:temp data.ancient_staff.spells[1].translate
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.damaging_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/damaging_spell/1
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.lightning_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/lightning_spell/1
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.fire_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/fire_spell/1
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.ice_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/ice_spell/1
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.commanding_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/commanding_spell/1
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.wind_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/wind_spell/1
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.sonic_boom"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/sonic_boom/1
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.water_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/water_spell/1
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.earth_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/earth_spell/1

data remove storage magical_addons:temp data.ancient_staff.spell
execute if data storage magical_addons:temp data.ancient_staff.spells[2].translate run data modify storage magical_addons:temp data.ancient_staff.spell set from storage magical_addons:temp data.ancient_staff.spells[2].translate
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.damaging_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/damaging_spell/2
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.lightning_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/lightning_spell/2
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.fire_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/fire_spell/2
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.ice_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/ice_spell/2
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.commanding_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/commanding_spell/2
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.wind_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/wind_spell/2
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.sonic_boom"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/sonic_boom/2
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.water_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/water_spell/2
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.earth_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/earth_spell/2

data remove storage magical_addons:temp data.ancient_staff.spell
execute if data storage magical_addons:temp data.ancient_staff.spells[3].translate run data modify storage magical_addons:temp data.ancient_staff.spell set from storage magical_addons:temp data.ancient_staff.spells[3].translate
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.damaging_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/damaging_spell/3
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.lightning_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/lightning_spell/3
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.fire_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/fire_spell/3
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.ice_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/ice_spell/3
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.commanding_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/commanding_spell/3
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.wind_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/wind_spell/3
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.sonic_boom"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/sonic_boom/3
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.water_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/water_spell/3
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.earth_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/earth_spell/3

data remove storage magical_addons:temp data.ancient_staff.spell
execute if data storage magical_addons:temp data.ancient_staff.spells[4].translate run data modify storage magical_addons:temp data.ancient_staff.spell set from storage magical_addons:temp data.ancient_staff.spells[4].translate
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.damaging_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/damaging_spell/4
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.lightning_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/lightning_spell/4
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.fire_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/fire_spell/4
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.ice_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/ice_spell/4
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.commanding_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/commanding_spell/4
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.wind_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/wind_spell/4
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.sonic_boom"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/sonic_boom/4
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.water_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/water_spell/4
$execute if data storage magical_addons:temp data.ancient_staff{spell:"enchantment.magical_addons.earth_spell"} run item modify entity @s weapon.$(hand) magical_addons:item/cast/ancient_staff/earth_spell/4
