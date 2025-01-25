# dungeon:aether_portal/build/z/17_8
# called by: dungeon:aether_portal/build

execute store result score @s maddons.temp if blocks ~ ~ ~ ~ ~5 ~14 ~ ~ ~ masked
execute if score @s maddons.temp matches 1 run fill ~ ~ ~ ~ ~5 ~14 light[level=11]
execute if score @s maddons.temp matches 1 run summon item_display ~ ~5 ~ {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,t,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:5,z:0,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~5 ~1 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,t,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:5,z:1,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~5 ~2 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,t,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:5,z:2,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~5 ~3 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,t,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:5,z:3,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~5 ~4 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,t,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:5,z:4,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~5 ~5 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,t,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:5,z:5,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~5 ~6 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,t,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:5,z:6,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~5 ~7 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,t,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:5,z:7,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~5 ~8 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,t,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:5,z:8,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~5 ~9 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,t,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:5,z:9,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~5 ~10 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,t,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:5,z:10,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~5 ~11 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,t,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:5,z:11,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~5 ~12 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,t,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:5,z:12,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~5 ~13 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,t,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:5,z:13,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~5 ~14 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,t,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:5,z:14,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~4 ~ {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:4,z:0,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~4 ~1 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:4,z:1,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~4 ~2 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:4,z:2,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~4 ~3 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:4,z:3,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~4 ~4 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:4,z:4,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~4 ~5 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:4,z:5,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~4 ~6 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:4,z:6,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~4 ~7 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:4,z:7,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~4 ~8 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:4,z:8,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~4 ~9 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:4,z:9,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~4 ~10 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:4,z:10,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~4 ~11 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:4,z:11,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~4 ~12 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:4,z:12,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~4 ~13 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:4,z:13,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~4 ~14 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:4,z:14,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~3 ~ {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:3,z:0,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~3 ~1 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:3,z:1,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~3 ~2 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:3,z:2,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~3 ~3 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:3,z:3,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~3 ~4 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:3,z:4,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~3 ~5 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:3,z:5,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~3 ~6 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:3,z:6,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~3 ~7 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:3,z:7,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~3 ~8 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:3,z:8,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~3 ~9 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:3,z:9,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~3 ~10 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:3,z:10,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~3 ~11 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:3,z:11,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~3 ~12 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:3,z:12,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~3 ~13 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:3,z:13,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~3 ~14 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:3,z:14,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~2 ~ {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:2,z:0,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~2 ~1 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:2,z:1,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~2 ~2 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:2,z:2,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~2 ~3 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:2,z:3,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~2 ~4 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:2,z:4,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~2 ~5 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:2,z:5,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~2 ~6 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:2,z:6,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~2 ~7 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:2,z:7,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~2 ~8 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:2,z:8,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~2 ~9 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:2,z:9,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~2 ~10 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:2,z:10,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~2 ~11 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:2,z:11,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~2 ~12 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:2,z:12,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~2 ~13 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:2,z:13,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~2 ~14 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:2,z:14,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~1 ~ {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:1,z:0,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~1 ~1 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:1,z:1,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~1 ~2 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:1,z:2,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~1 ~3 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:1,z:3,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~1 ~4 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:1,z:4,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~1 ~5 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:1,z:5,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~1 ~6 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:1,z:6,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~1 ~7 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:1,z:7,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~1 ~8 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:1,z:8,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~1 ~9 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:1,z:9,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~1 ~10 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:1,z:10,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~1 ~11 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:1,z:11,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~1 ~12 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:1,z:12,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~1 ~13 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:1,z:13,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~1 ~14 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:1,z:14,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~ ~ {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,b,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:0,z:0,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~ ~1 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,b,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:0,z:1,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~ ~2 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,b,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:0,z:2,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~ ~3 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,b,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:0,z:3,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~ ~4 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,b,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:0,z:4,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~ ~5 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,b,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:0,z:5,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~ ~6 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,b,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:0,z:6,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~ ~7 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,b,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:0,z:7,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~ ~8 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,b,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:0,z:8,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~ ~9 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,b,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:0,z:9,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~ ~10 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,b,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:0,z:10,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~ ~11 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,b,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:0,z:11,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~ ~12 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,b,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:0,z:12,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~ ~13 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,b,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:0,z:13,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~ ~14 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,b,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:0,z:14,dx:1,dy:6,dz:15}}}}}
execute if score @s maddons.temp matches 1 run summon interaction ~ ~ ~ {Tags:[maddons.aether_portal,z],width:1.01,height:6}
execute if score @s maddons.temp matches 1 run summon interaction ~ ~ ~1 {Tags:[maddons.aether_portal,z],width:1.01,height:6}
execute if score @s maddons.temp matches 1 run summon interaction ~ ~ ~2 {Tags:[maddons.aether_portal,z],width:1.01,height:6}
execute if score @s maddons.temp matches 1 run summon interaction ~ ~ ~3 {Tags:[maddons.aether_portal,z],width:1.01,height:6}
execute if score @s maddons.temp matches 1 run summon interaction ~ ~ ~4 {Tags:[maddons.aether_portal,z],width:1.01,height:6}
execute if score @s maddons.temp matches 1 run summon interaction ~ ~ ~5 {Tags:[maddons.aether_portal,z],width:1.01,height:6}
execute if score @s maddons.temp matches 1 run summon interaction ~ ~ ~6 {Tags:[maddons.aether_portal,z],width:1.01,height:6}
execute if score @s maddons.temp matches 1 run summon interaction ~ ~ ~7 {Tags:[maddons.aether_portal,z],width:1.01,height:6}
execute if score @s maddons.temp matches 1 run summon interaction ~ ~ ~8 {Tags:[maddons.aether_portal,z],width:1.01,height:6}
execute if score @s maddons.temp matches 1 run summon interaction ~ ~ ~9 {Tags:[maddons.aether_portal,z],width:1.01,height:6}
execute if score @s maddons.temp matches 1 run summon interaction ~ ~ ~10 {Tags:[maddons.aether_portal,z],width:1.01,height:6}
execute if score @s maddons.temp matches 1 run summon interaction ~ ~ ~11 {Tags:[maddons.aether_portal,z],width:1.01,height:6}
execute if score @s maddons.temp matches 1 run summon interaction ~ ~ ~12 {Tags:[maddons.aether_portal,z],width:1.01,height:6}
execute if score @s maddons.temp matches 1 run summon interaction ~ ~ ~13 {Tags:[maddons.aether_portal,z],width:1.01,height:6}
execute if score @s maddons.temp matches 1 run summon interaction ~ ~ ~14 {Tags:[maddons.aether_portal,z],width:1.01,height:6}