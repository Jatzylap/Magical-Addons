# block:vanilla/spawner/raycast
# called by advancement: block:place/spawner

data merge storage iris:settings {\
    target_entities: false,\
    callback: "function magical_addons:block/vanilla/spawner/scan",\
    blacklist: "#magical_addons:intangible",\
    whitelist: ""\
}

execute anchored eyes positioned ^ ^ ^ run function iris:get_target

advancement revoke @s from magical_addons:---/block/place