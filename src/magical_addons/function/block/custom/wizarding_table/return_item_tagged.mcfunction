# block:custom/wizarding_table/return_item_tagged
# called by: block:custom/wizarding_table/return

$execute at @s run return run summon item ~ ~ ~ {Item:{count:$(count),id:"$(id)",components:$(components)}}