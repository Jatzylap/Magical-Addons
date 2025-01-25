# block:group/vanilla/chiseled_bookshelf/return_item
# called by: block:interact

$execute at @s run return run summon item ~ ~ ~ {Item:{count:1,id:"$(id)"}}