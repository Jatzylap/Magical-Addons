# block:custom/wizarding_table/iraycast
# called by advancement: block:interact/wizarding_table

data merge storage iris:settings {\
    target_entities: false,\
    callback: "function magical_addons:block/custom/wizarding_table/iscan",\
    blacklist: "#magical_addons:intangible",\
    whitelist: ""\
}

execute anchored eyes positioned ^ ^ ^ run function iris:get_target

advancement revoke @s from magical_addons:---/block/interact