# block:interact
# called by: block:mine

$execute if block ~ ~ ~ $(block_interact_target) positioned ~.5 ~ ~.5 if entity @n[type=#magical_addons:display,tag=maddons.block.interactable,distance=...5] unless entity @n[type=interaction,tag=maddons.block.interaction,distance=...5] run summon interaction ~ ~ ~ {width:$(interact_hitbox_width),height:$(interact_hitbox_height),Tags:["maddons.block.interaction","maddons.$(id)"]}