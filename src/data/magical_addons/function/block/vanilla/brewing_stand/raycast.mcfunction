# block:vanilla/brewing_stand/raycast
# called by advancement: block:place/brewing_stand

data merge storage iris:settings {\
    target_entities: false,\
    callback: "function magical_addons:block/vanilla/brewing_stand/scan",\
    blacklist: "#magical_addons:intangible",\
    whitelist: ""\
}

execute anchored eyes positioned ^ ^ ^ run function iris:get_target

advancement revoke @s from magical_addons:---/block/place