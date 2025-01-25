# dungeon:aether_portal/destroy
# called by: dungeon:aether_portal/destroy/as_player, dungeon:aether_portal/destroy/from_x, dungeon:aether_portal/destroy/from_z

$execute positioned ~-$(x) ~-$(y) ~-$(z) align xyz positioned ~ ~-1 ~ as @e[tag=maddons.aether_portal,dx=$(dx),dy=$(dy),dz=$(dz)] at @s run function magical_addons:block/break