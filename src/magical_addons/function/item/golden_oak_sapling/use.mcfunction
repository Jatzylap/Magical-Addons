# item:golden_oak_sapling/use
# called by advancement: item:use/golden_oak_sapling

data merge storage iris:settings {\
    target_entities: false,\
    callback: "execute if block ~ ~ ~ flower_pot align xyz positioned ~.5 ~.5 ~.5 run function magical_addons:block/custom/potted_golden_oak_sapling/place",\
    blacklist: "#magical_addons:intangible",\
    whitelist: ""\
}

execute anchored eyes positioned ^ ^ ^ run function iris:get_target

advancement revoke @s from magical_addons:---/item/use