# item:wand/use_offhand
# called by: item:wand/use

## Wand
$execute if entity @s[gamemode=creative] run function magical_addons:item/wand/$(id)/use
$execute if entity @s[gamemode=!creative] unless score @s maddons.mana matches $(min_mana).. run playsound magical_addons:item.generic.spell.fizzle player @s ~ ~ ~
$execute if entity @s[gamemode=!creative] if score @s maddons.mana matches $(min_mana).. run function magical_addons:item/wand/$(id)/use

## Break
$execute if entity @s[gamemode=!creative] if score @s maddons.mana matches $(min_mana).. if items entity @s weapon.offhand *[damage=$(max_damage)] run playsound entity.item.break player @a ~ ~ ~ 0.5
$execute if entity @s[gamemode=!creative] if score @s maddons.mana matches $(min_mana).. if items entity @s weapon.offhand *[damage=$(max_damage)] run particle item{item:{id:"warped_fungus_on_a_stick",components:{item_model:"magical_addons:$(id)"}}} ^.4 ^ ^.1 0 0 0 .2 5 normal @a
$execute if entity @s[gamemode=!creative] if score @s maddons.mana matches $(min_mana).. if items entity @s weapon.offhand *[damage=$(max_damage)] run item replace entity @s weapon.offhand with air

## Damage
$execute if entity @s[gamemode=!creative] if score @s maddons.mana matches $(min_mana).. run item modify entity @s weapon.offhand magical_addons:item/damage/$(id)

## Remove Mana
$execute if entity @s[gamemode=!creative] run scoreboard players remove @s[scores={maddons.mana=$(min_mana)..}] maddons.mana $(min_mana)