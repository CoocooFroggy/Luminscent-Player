# Remove glow_lichen
execute unless entity @a[distance=..2.5,scores={holdingLuminesce=1}] if block ~ ~ ~ minecraft:glow_lichen[waterlogged=true] run setblock ~ ~ ~ water
execute unless entity @a[distance=..2.5,scores={holdingLuminesce=1}] if block ~ ~ ~ minecraft:glow_lichen[waterlogged=false] run setblock ~ ~ ~ air

# Delete the area_effect_cloud
execute unless entity @a[distance=..2.5,scores={holdingLuminesce=1}] run kill