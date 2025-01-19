# dungeon:aether_portal/build/z/8_15
# called by: dungeon:aether_portal/build

execute store result score @s maddons.temp if blocks ~ ~ ~ ~ ~12 ~5 ~ ~ ~ masked
execute if score @s maddons.temp matches 1 run fill ~ ~ ~ ~ ~12 ~5 light[level=11]
execute if score @s maddons.temp matches 1 run summon item_display ~ ~12 ~ {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,t,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:12,z:0,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~12 ~1 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,t,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:12,z:1,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~12 ~2 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,t,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:12,z:2,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~12 ~3 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,t,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:12,z:3,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~12 ~4 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,t,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:12,z:4,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~12 ~5 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,t,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:12,z:5,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~11 ~ {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:11,z:0,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~11 ~1 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:11,z:1,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~11 ~2 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:11,z:2,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~11 ~3 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:11,z:3,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~11 ~4 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:11,z:4,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~11 ~5 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:11,z:5,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~10 ~ {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:10,z:0,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~10 ~1 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:10,z:1,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~10 ~2 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:10,z:2,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~10 ~3 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:10,z:3,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~10 ~4 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:10,z:4,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~10 ~5 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:10,z:5,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~9 ~ {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:9,z:0,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~9 ~1 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:9,z:1,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~9 ~2 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:9,z:2,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~9 ~3 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:9,z:3,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~9 ~4 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:9,z:4,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~9 ~5 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:9,z:5,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~8 ~ {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:8,z:0,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~8 ~1 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:8,z:1,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~8 ~2 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:8,z:2,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~8 ~3 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:8,z:3,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~8 ~4 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:8,z:4,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~8 ~5 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:8,z:5,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~7 ~ {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:7,z:0,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~7 ~1 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:7,z:1,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~7 ~2 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:7,z:2,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~7 ~3 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:7,z:3,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~7 ~4 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:7,z:4,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~7 ~5 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:7,z:5,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~6 ~ {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:6,z:0,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~6 ~1 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:6,z:1,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~6 ~2 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:6,z:2,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~6 ~3 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:6,z:3,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~6 ~4 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:6,z:4,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~6 ~5 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:6,z:5,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~5 ~ {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:5,z:0,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~5 ~1 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:5,z:1,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~5 ~2 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:5,z:2,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~5 ~3 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:5,z:3,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~5 ~4 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:5,z:4,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~5 ~5 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:5,z:5,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~4 ~ {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:4,z:0,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~4 ~1 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:4,z:1,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~4 ~2 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:4,z:2,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~4 ~3 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:4,z:3,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~4 ~4 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:4,z:4,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~4 ~5 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:4,z:5,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~3 ~ {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:3,z:0,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~3 ~1 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:3,z:1,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~3 ~2 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:3,z:2,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~3 ~3 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:3,z:3,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~3 ~4 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:3,z:4,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~3 ~5 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:3,z:5,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~2 ~ {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:2,z:0,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~2 ~1 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:2,z:1,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~2 ~2 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:2,z:2,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~2 ~3 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:2,z:3,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~2 ~4 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:2,z:4,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~2 ~5 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:2,z:5,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~1 ~ {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:1,z:0,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~1 ~1 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:1,z:1,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~1 ~2 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:1,z:2,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~1 ~3 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:1,z:3,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~1 ~4 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:1,z:4,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~1 ~5 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,z,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:1,z:5,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~ ~ {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,b,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:0,z:0,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~ ~1 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,b,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:0,z:1,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~ ~2 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,b,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:0,z:2,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~ ~3 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,b,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:0,z:3,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~ ~4 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,b,z],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:0,z:4,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~ ~5 {view_range:300f,Rotation:[90f],brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.aether_portal,z,b,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:aether_portal",custom_data:{portal:{x:0,y:0,z:5,dx:1,dy:13,dz:6}}}}}
execute if score @s maddons.temp matches 1 run summon interaction ~ ~ ~ {Tags:[maddons.aether_portal,z],width:1.01,height:13}
execute if score @s maddons.temp matches 1 run summon interaction ~ ~ ~1 {Tags:[maddons.aether_portal,z],width:1.01,height:13}
execute if score @s maddons.temp matches 1 run summon interaction ~ ~ ~2 {Tags:[maddons.aether_portal,z],width:1.01,height:13}
execute if score @s maddons.temp matches 1 run summon interaction ~ ~ ~3 {Tags:[maddons.aether_portal,z],width:1.01,height:13}
execute if score @s maddons.temp matches 1 run summon interaction ~ ~ ~4 {Tags:[maddons.aether_portal,z],width:1.01,height:13}
execute if score @s maddons.temp matches 1 run summon interaction ~ ~ ~5 {Tags:[maddons.aether_portal,z],width:1.01,height:13}