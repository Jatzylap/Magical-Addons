# item:golden_wand/use_mainhand
# called by: item:golden_wand/use

## Use (Creative Mode)
execute if entity @s[gamemode=creative] run function magical_addons:item/golden_wand/disambiguation {hand:"mainhand"}

## Use (!Creative Mode)
$execute if entity @s[gamemode=!creative] unless score @s maddons.mana matches $(min_mana).. run return run playsound magical_addons:item.generic.spell.fizzle player @s ~ ~ ~
execute if entity @s[gamemode=!creative] run function magical_addons:item/golden_wand/disambiguation {hand:"mainhand"}

## Break
$execute if entity @s[gamemode=!creative] if items entity @s weapon.mainhand *[damage=$(max_damage)] run playsound entity.item.break player @a ~ ~ ~ 0.5
$execute if entity @s[gamemode=!creative] if items entity @s weapon.mainhand *[damage=$(max_damage)] run particle item{item:{id:"recovery_compass",components:{item_model:"magical_addons:golden_wand"}}} ^-.4 ^ ^.1 0 0 0 .2 5 normal @a
$execute if entity @s[gamemode=!creative] if items entity @s weapon.mainhand *[damage=$(max_damage)] run item replace entity @s weapon.mainhand with air

## Damage
execute if entity @s[gamemode=!creative] run item modify entity @s weapon.mainhand magical_addons:item/damage/golden_wand

## Remove Mana
$execute if entity @s[gamemode=!creative] run scoreboard players remove @s[scores={maddons.mana=$(min_mana)..}] maddons.mana $(min_mana)