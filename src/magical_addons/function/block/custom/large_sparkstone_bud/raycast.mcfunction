# block:custom/large_sparkstone_bud/raycast
# called by advancement: block:place/large_sparkstone_bud

data merge storage iris:settings {\
    target_entities: false,\
    callback: "function magical_addons:block/custom/large_sparkstone_bud/scan",\
    blacklist: "#magical_addons:intangible",\
    whitelist: ""\
}

execute anchored eyes positioned ^ ^ ^ run function iris:get_target

advancement revoke @s from magical_addons:---/block/place