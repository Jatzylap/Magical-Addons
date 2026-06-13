# block:custom/sparkstone_cluster/raycast
# called by advancement: block:place/sparkstone_cluster

data merge storage iris:settings {\
    target_entities: false,\
    callback: "function magical_addons:block/custom/sparkstone_cluster/scan",\
    blacklist: "#magical_addons:intangible",\
    whitelist: ""\
}

execute anchored eyes positioned ^ ^ ^ run function iris:get_target

advancement revoke @s from magical_addons:---/block/place