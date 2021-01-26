# So we can remove it later, put this placeholder
execute unless entity @e[type=area_effect_cloud,tag=glow,distance=..0.6] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["glow"],Duration:630720000}
# If underwater, place waterlogged lichen
execute at @e[type=minecraft:area_effect_cloud,tag=glow,limit=1,sort=nearest] if block ~ ~ ~ minecraft:water run setblock ~ ~ ~ minecraft:glow_lichen[waterlogged=true]
# Otherwise place aired lichen
execute at @e[type=minecraft:area_effect_cloud,tag=glow,limit=1,sort=nearest] if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:glow_lichen[waterlogged=false]
execute at @e[type=minecraft:area_effect_cloud,tag=glow,limit=1,sort=nearest] if block ~ ~ ~ minecraft:cave_air run setblock ~ ~ ~ minecraft:glow_lichen[waterlogged=false]