# block:custom/wizarding_table/gui
# called by: block:custom/wizarding_table/operate

## Recipes
function magical_addons:block/custom/wizarding_table/gui/recipes

## Restore lost items
execute if entity @s[tag=!off] if predicate magical_addons:block/wizarding_table/restore_item run function magical_addons:block/custom/wizarding_table/gui/restore

## Reset
function magical_addons:block/custom/wizarding_table/gui/reset

## Craft items
execute if entity @s[tag=!maddons.wt_rb] run function magical_addons:block/custom/wizarding_table/gui/craft