execute in magical_addons:---/void run data remove block 0 0 0 Items
execute in magical_addons:---/void run data remove block 0 1 0 Items
$execute in magical_addons:---/void run data modify block 0 0 0 Items set from storage maddons.player:registry data.inventories[{UUID:$(UUID)}].inventory$(slot).section1
$execute in magical_addons:---/void run data modify block 0 1 0 Items set from storage maddons.player:registry data.inventories[{UUID:$(UUID)}].inventory$(slot).section2
execute in magical_addons:---/void if data block 0 0 0 Items run function magical_addons:dev/---/restore_inventory/1
execute in magical_addons:---/void if data block 0 1 0 Items run function magical_addons:dev/---/restore_inventory/2