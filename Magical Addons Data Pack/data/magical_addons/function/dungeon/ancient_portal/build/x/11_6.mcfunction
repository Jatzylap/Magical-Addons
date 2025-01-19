# dungeon:ancient_portal/build/x/11_6
# called by: dungeon:ancient_portal/build

execute store result score @s maddons.temp if blocks ~ ~ ~ ~8 ~3 ~ ~ ~ ~ masked
execute if score @s maddons.temp matches 1 run fill ~ ~ ~ ~8 ~3 ~ light[level=11]
execute if score @s maddons.temp matches 1 run summon item_display ~ ~3 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,t,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:0,y:3,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~3 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,t,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:1,y:3,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~3 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,t,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:2,y:3,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~3 ~3 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,t,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:3,y:3,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~4 ~3 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,t,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:4,y:3,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~5 ~3 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,t,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:5,y:3,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~6 ~3 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,t,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:6,y:3,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~7 ~3 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,t,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:7,y:3,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~8 ~3 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,t,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:8,y:3,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:0,y:2,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:1,y:2,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:2,y:2,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~3 ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:3,y:2,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~4 ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:4,y:2,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~5 ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:5,y:2,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~6 ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:6,y:2,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~7 ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:7,y:2,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~8 ~2 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:8,y:2,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:0,y:1,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:1,y:1,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:2,y:1,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~3 ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:3,y:1,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~4 ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:4,y:1,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~5 ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:5,y:1,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~6 ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:6,y:1,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~7 ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:7,y:1,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~8 ~1 ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,x,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:8,y:1,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~ ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,b,l],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:0,y:0,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~1 ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,b,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:1,y:0,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~2 ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,b,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:2,y:0,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~3 ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,b,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:3,y:0,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~4 ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,b,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:4,y:0,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~5 ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,b,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:5,y:0,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~6 ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,b,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:6,y:0,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~7 ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,b,x],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:7,y:0,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon item_display ~8 ~ ~ {view_range:300f,brightness:{sky:15,block:11},Tags:[maddons.block,maddons.persistent,maddons.ancient_portal,x,b,r],item:{id:"stick",count:1,components:{item_model:"magical_addons:ancient_portal",custom_data:{portal:{x:8,y:0,z:0,dx:9,dy:4,dz:1}}}}}
execute if score @s maddons.temp matches 1 run summon interaction ~ ~ ~ {Tags:[maddons.ancient_portal,x],width:1.01,height:4}
execute if score @s maddons.temp matches 1 run summon interaction ~1 ~ ~ {Tags:[maddons.ancient_portal,x],width:1.01,height:4}
execute if score @s maddons.temp matches 1 run summon interaction ~2 ~ ~ {Tags:[maddons.ancient_portal,x],width:1.01,height:4}
execute if score @s maddons.temp matches 1 run summon interaction ~3 ~ ~ {Tags:[maddons.ancient_portal,x],width:1.01,height:4}
execute if score @s maddons.temp matches 1 run summon interaction ~4 ~ ~ {Tags:[maddons.ancient_portal,x],width:1.01,height:4}
execute if score @s maddons.temp matches 1 run summon interaction ~5 ~ ~ {Tags:[maddons.ancient_portal,x],width:1.01,height:4}
execute if score @s maddons.temp matches 1 run summon interaction ~6 ~ ~ {Tags:[maddons.ancient_portal,x],width:1.01,height:4}
execute if score @s maddons.temp matches 1 run summon interaction ~7 ~ ~ {Tags:[maddons.ancient_portal,x],width:1.01,height:4}
execute if score @s maddons.temp matches 1 run summon interaction ~8 ~ ~ {Tags:[maddons.ancient_portal,x],width:1.01,height:4}