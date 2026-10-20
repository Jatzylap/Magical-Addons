# block:custom/wizarding_table/return
# called by: block:custom/wizarding_table/gui/recipe_book, block:custom/wizarding_table/gui/main

## No components
$execute unless data block ~ ~ ~ Items[{Slot:$(slot)b}].components run function magical_addons:block/custom/wizarding_table/return_item with block ~ ~ ~ Items[{Slot:$(slot)b}]

## With components
$execute if data block ~ ~ ~ Items[{Slot:$(slot)b}].components run function magical_addons:block/custom/wizarding_table/return_item_tagged with block ~ ~ ~ Items[{Slot:$(slot)b}]