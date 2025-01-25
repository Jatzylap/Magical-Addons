# block:group/vanilla/chiseled_bookshelf/interact
# called by: block:interact

data modify block ~ ~ ~ last_interacted_slot set value -1
execute if entity @s[gamemode=!creative] if data block ~ ~ ~ Items[0] unless data block ~ ~ ~ Items[0].components run return run function magical_addons:block/group/vanilla/chiseled_bookshelf/return_item with block ~ ~ ~ Items[0]
execute if entity @s[gamemode=!creative] if data block ~ ~ ~ Items[0].components run return run function magical_addons:block/group/vanilla/chiseled_bookshelf/return_item_tagged with block ~ ~ ~ Items[0]

return 0