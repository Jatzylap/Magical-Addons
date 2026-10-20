# block:custom/cursed_head/raycast
# called by advancement: block:place/cursed_head

data merge storage iris:settings {\
    target_entities: false,\
    callback: "function magical_addons:block/mine",\
    blacklist: "#magical_addons:intangible",\
    whitelist: ""\
}

execute anchored eyes positioned ^ ^ ^ run function iris:get_target

advancement revoke @s from magical_addons:---/block/place