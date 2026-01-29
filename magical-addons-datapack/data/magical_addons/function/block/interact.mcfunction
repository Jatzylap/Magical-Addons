# block:interact
# called by: block:mine

$execute if block ~ ~ ~ $(block_interact_target) if entity @n[type=#magical_addons:display,tag=maddons.block.interactable,distance=...5] unless entity @n[type=interaction,tag=maddons.block.interaction,distance=...5] run summon interaction ~.5 ~ ~.5 {width:$(interact_hitbox_width),height:$(interact_hitbox_height),Tags:["maddons.block.interaction","maddons.$(id)"]}