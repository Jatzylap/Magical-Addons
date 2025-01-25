# dungeon:ancient_portal/destroy
# called by: dungeon:ancient_portal/destroy/as_player, dungeon:ancient_portal/destroy/from_x, dungeon:ancient_portal/destroy/from_z

$execute positioned ~-$(x) ~-$(y) ~-$(z) align xyz positioned ~ ~-1 ~ as @e[tag=maddons.ancient_portal,dx=$(dx),dy=$(dy),dz=$(dz)] at @s run function magical_addons:block/break