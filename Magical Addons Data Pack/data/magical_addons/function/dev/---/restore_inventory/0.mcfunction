execute in magical_addons:---/overworld run fill 0 0 0 0 1 0 shulker_box keep
$execute in magical_addons:---/overworld run data modify block 0 0 0 Items set from storage magical_addons:data data.inventories[{UUID:$(UUID)}].inventory$(slot).section1
$execute in magical_addons:---/overworld run data modify block 0 1 0 Items set from storage magical_addons:data data.inventories[{UUID:$(UUID)}].inventory$(slot).section2
execute in magical_addons:---/overworld if data block 0 0 0 Items run function magical_addons:dev/---/restore_inventory/1
execute in magical_addons:---/overworld if data block 0 1 0 Items run function magical_addons:dev/---/restore_inventory/2
execute in magical_addons:---/overworld run fill 0 0 0 0 1 0 air replace shulker_box