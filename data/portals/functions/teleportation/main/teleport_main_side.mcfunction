# Lazy Check for Axis

# Execute if Portal is On Z-Axis
execute as @a at @s if entity @e[name=CustomPortalsOtherSideMarker, distance=0..] if block ~ ~-1 ~ #minecraft:portal_frame if block ~ ~ ~ #minecraft:portal_wall[axis=z] run function portals:teleportation/main/teleport_main_side_z

# Execute if Portal is On X-Axis
execute as @a at @s if entity @e[name=CustomPortalsOtherSideMarker, distance=0..] if block ~ ~-1 ~ #minecraft:portal_frame if block ~ ~ ~ #minecraft:portal_wall[axis=x] run function portals:teleportation/main/teleport_main_side_x