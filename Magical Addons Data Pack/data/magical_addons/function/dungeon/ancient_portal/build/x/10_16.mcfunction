# dungeon:ancient_portal/build/x/10_16
# called by: dungeon:ancient_portal/build

execute store result score @s maddons.temp if blocks ~ ~ ~ ~7 ~13 ~ ~ ~ ~ masked
execute if score @s maddons.temp matches 1 run fill ~ ~ ~ ~7 ~13 ~ light[level=11]
execute if score @s maddons.temp matches 1 run summon item_display ~ ~13 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,t,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:0,y:13,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~13 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,t,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:1,y:13,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~13 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,t,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:2,y:13,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~3 ~13 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,t,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:3,y:13,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~4 ~13 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,t,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:4,y:13,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~5 ~13 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,t,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:5,y:13,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~6 ~13 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,t,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:6,y:13,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~7 ~13 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,t,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:7,y:13,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~12 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:0,y:12,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~12 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:1,y:12,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~12 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:2,y:12,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~3 ~12 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:3,y:12,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~4 ~12 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:4,y:12,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~5 ~12 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:5,y:12,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~6 ~12 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:6,y:12,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~7 ~12 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:7,y:12,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~11 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:0,y:11,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~11 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:1,y:11,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~11 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:2,y:11,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~3 ~11 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:3,y:11,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~4 ~11 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:4,y:11,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~5 ~11 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:5,y:11,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~6 ~11 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:6,y:11,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~7 ~11 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:7,y:11,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~10 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:0,y:10,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~10 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:1,y:10,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~10 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:2,y:10,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~3 ~10 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:3,y:10,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~4 ~10 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:4,y:10,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~5 ~10 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:5,y:10,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~6 ~10 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:6,y:10,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~7 ~10 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:7,y:10,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~9 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:0,y:9,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~9 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:1,y:9,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~9 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:2,y:9,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~3 ~9 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:3,y:9,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~4 ~9 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:4,y:9,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~5 ~9 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:5,y:9,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~6 ~9 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:6,y:9,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~7 ~9 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:7,y:9,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~8 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:0,y:8,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~8 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:1,y:8,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~8 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:2,y:8,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~3 ~8 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:3,y:8,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~4 ~8 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:4,y:8,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~5 ~8 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:5,y:8,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~6 ~8 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:6,y:8,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~7 ~8 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:7,y:8,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~7 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:0,y:7,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~7 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:1,y:7,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~7 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:2,y:7,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~3 ~7 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:3,y:7,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~4 ~7 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:4,y:7,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~5 ~7 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:5,y:7,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~6 ~7 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:6,y:7,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~7 ~7 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:7,y:7,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~6 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:0,y:6,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~6 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:1,y:6,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~6 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:2,y:6,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~3 ~6 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:3,y:6,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~4 ~6 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:4,y:6,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~5 ~6 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:5,y:6,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~6 ~6 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:6,y:6,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~7 ~6 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:7,y:6,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~5 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:0,y:5,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~5 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:1,y:5,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~5 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:2,y:5,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~3 ~5 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:3,y:5,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~4 ~5 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:4,y:5,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~5 ~5 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:5,y:5,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~6 ~5 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:6,y:5,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~7 ~5 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:7,y:5,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~4 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:0,y:4,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~4 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:1,y:4,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~4 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:2,y:4,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~3 ~4 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:3,y:4,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~4 ~4 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:4,y:4,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~5 ~4 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:5,y:4,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~6 ~4 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:6,y:4,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~7 ~4 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:7,y:4,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~3 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:0,y:3,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~3 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:1,y:3,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~3 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:2,y:3,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~3 ~3 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:3,y:3,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~4 ~3 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:4,y:3,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~5 ~3 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:5,y:3,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~6 ~3 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:6,y:3,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~7 ~3 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:7,y:3,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:0,y:2,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:1,y:2,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:2,y:2,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~3 ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:3,y:2,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~4 ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:4,y:2,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~5 ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:5,y:2,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~6 ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:6,y:2,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~7 ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:7,y:2,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:0,y:1,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:1,y:1,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:2,y:1,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~3 ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:3,y:1,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~4 ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:4,y:1,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~5 ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:5,y:1,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~6 ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:6,y:1,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~7 ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:7,y:1,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,b,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:0,y:0,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,b,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:1,y:0,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,b,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:2,y:0,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~3 ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,b,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:3,y:0,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~4 ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,b,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:4,y:0,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~5 ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,b,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:5,y:0,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~6 ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,b,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:6,y:0,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~7 ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,b,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:7,y:0,z:0,dx:8,dy:14,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon interaction ~ ~ ~ {Tags:[maddons.ancient_portal,x],width:1.01,height:14}
execute if score @s maddons.temp matches 1 run summon interaction ~1 ~ ~ {Tags:[maddons.ancient_portal,x],width:1.01,height:14}
execute if score @s maddons.temp matches 1 run summon interaction ~2 ~ ~ {Tags:[maddons.ancient_portal,x],width:1.01,height:14}
execute if score @s maddons.temp matches 1 run summon interaction ~3 ~ ~ {Tags:[maddons.ancient_portal,x],width:1.01,height:14}
execute if score @s maddons.temp matches 1 run summon interaction ~4 ~ ~ {Tags:[maddons.ancient_portal,x],width:1.01,height:14}
execute if score @s maddons.temp matches 1 run summon interaction ~5 ~ ~ {Tags:[maddons.ancient_portal,x],width:1.01,height:14}
execute if score @s maddons.temp matches 1 run summon interaction ~6 ~ ~ {Tags:[maddons.ancient_portal,x],width:1.01,height:14}
execute if score @s maddons.temp matches 1 run summon interaction ~7 ~ ~ {Tags:[maddons.ancient_portal,x],width:1.01,height:14}