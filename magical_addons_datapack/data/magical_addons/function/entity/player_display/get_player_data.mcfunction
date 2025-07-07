# entity:player_display/get_player_data
# called by: entity:player_display/summon

## Get skin
loot replace entity @n[tag=!maddons.summoned,tag=maddons.player_display,tag=maddons.head] hotbar.0 loot magical_addons:---/entity/player_display/head
loot replace entity @n[tag=!maddons.summoned,tag=maddons.player_display,tag=maddons.torso] hotbar.0 loot magical_addons:---/entity/player_display/torso
loot replace entity @n[tag=!maddons.summoned,tag=maddons.player_display,tag=maddons.right_leg] hotbar.0 loot magical_addons:---/entity/player_display/right_leg
loot replace entity @n[tag=!maddons.summoned,tag=maddons.player_display,tag=maddons.left_leg] hotbar.0 loot magical_addons:---/entity/player_display/left_leg
execute if entity @s[tag=!maddons.skin.slim] run loot replace entity @n[tag=!maddons.summoned,tag=maddons.player_display,tag=maddons.right_arm] hotbar.0 loot magical_addons:---/entity/player_display/right_arm
execute if entity @s[tag=!maddons.skin.slim] run loot replace entity @n[tag=!maddons.summoned,tag=maddons.player_display,tag=maddons.left_arm] hotbar.0 loot magical_addons:---/entity/player_display/left_arm
execute if entity @s[tag=maddons.skin.slim] run loot replace entity @n[tag=!maddons.summoned,tag=maddons.player_display,tag=maddons.right_arm] hotbar.0 loot magical_addons:---/entity/player_display/right_arm_slim
execute if entity @s[tag=maddons.skin.slim] run loot replace entity @n[tag=!maddons.summoned,tag=maddons.player_display,tag=maddons.left_arm] hotbar.0 loot magical_addons:---/entity/player_display/left_arm_slim

## Get name
data modify entity @n[tag=!maddons.summoned,tag=maddons.data,tag=maddons.player_display] data.magical_addons.player_name set from entity @n[tag=!maddons.summoned,tag=maddons.entity,tag=maddons.player_display] Passengers[{}].item.components."minecraft:profile".name
data modify entity @n[tag=!maddons.summoned,tag=maddons.text,tag=maddons.player_display] text set from entity @n[tag=!maddons.summoned,tag=maddons.entity,tag=maddons.player_display] data.magical_addons.player_name
data merge entity @n[tag=!maddons.summoned,tag=maddons.text,tag=maddons.player_display] {transformation:{translation:[.0,.5,.0]}}