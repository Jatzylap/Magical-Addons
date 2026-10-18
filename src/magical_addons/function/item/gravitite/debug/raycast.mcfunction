# item:gravitite/debug/raycast
# called by advancement: magical_addons:shared/place_gravitite

data merge storage iris:settings {\
    target_entities: false,\
    callback: "function magical_addons:item/gravitite/debug/scan",\
    blacklist: "#magical_addons:intangible",\
    whitelist: ""\
}

execute anchored eyes positioned ^ ^ ^ run function iris:get_target

advancement revoke @s from magical_addons:---/shared/root