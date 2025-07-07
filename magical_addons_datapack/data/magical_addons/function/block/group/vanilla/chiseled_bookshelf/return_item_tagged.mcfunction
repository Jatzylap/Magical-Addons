# block:group/vanilla/chiseled_bookshelf/return_item_tagged
# called by: block:group/vanilla/chiseled_bookshelf/interact

$execute at @s run return run summon item ~ ~ ~ {Item:{count:1,id:"$(id)",components:$(components)}}