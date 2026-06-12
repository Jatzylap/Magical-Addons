# dungeon:aether_portal/raycast
# called by advancement: dungeon:set_aether_portal

data merge storage iris:settings {\
    target_entities: false,\
    callback: "function magical_addons:dungeon/aether_portal/scan",\
    blacklist: "#magical_addons:intangible",\
    whitelist: ""\
}

execute anchored eyes positioned ^ ^ ^ run function iris:get_target

advancement revoke @s only magical_addons:---/dungeon/set_aether_portal