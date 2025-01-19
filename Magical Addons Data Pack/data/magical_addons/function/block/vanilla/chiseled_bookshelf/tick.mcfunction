# block:vanilla/chiseled_bookshelf/tick
# called by: block:tick

$execute in magical_addons:---/$(dimension) run forceload add ~ ~

$clone from magical_addons:---/$(dimension) ~ ~ ~ ~ ~ ~ to $(dimension) ~ ~ ~ filtered chiseled_bookshelf

$execute in magical_addons:---/$(dimension) run forceload remove ~ ~

function magical_addons:block/vanilla/chiseled_bookshelf/place