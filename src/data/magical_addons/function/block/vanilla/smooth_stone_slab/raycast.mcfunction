# block:vanilla/smooth_stone_slab/raycast
# called by advancement: block:place/smooth_stone_slab

data merge storage iris:settings {\
    target_entities: false,\
    callback: "function magical_addons:block/vanilla/smooth_stone_slab/scan",\
    blacklist: "#magical_addons:intangible",\
    whitelist: ""\
}

execute anchored eyes positioned ^ ^ ^ run function iris:get_target

advancement revoke @s from magical_addons:---/block/place