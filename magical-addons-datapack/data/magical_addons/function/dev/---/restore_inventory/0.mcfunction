execute in minecraft:overworld run fill -29999999 0 1615 -29999999 1 1615 shulker_box keep
$execute in magical_addons:---/overworld run data modify block -29999999 0 1615 Items set from storage magical_addons:data data.inventories[{UUID:$(UUID)}].inventory$(slot).section1
$execute in magical_addons:---/overworld run data modify block -29999999 1 1615 Items set from storage magical_addons:data data.inventories[{UUID:$(UUID)}].inventory$(slot).section2
execute in magical_addons:---/overworld if data block -29999999 0 1615 Items run function magical_addons:dev/---/restore_inventory/1
execute in magical_addons:---/overworld if data block -29999999 1 1615 Items run function magical_addons:dev/---/restore_inventory/2
execute in magical_addons:---/overworld run fill -29999999 0 1615 -29999999 1 1615 air replace shulker_box