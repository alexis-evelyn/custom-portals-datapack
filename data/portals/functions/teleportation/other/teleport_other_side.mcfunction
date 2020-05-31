# Lazy Check for Axis

# Execute if Portal is On Z-Axis
execute in minecraft:overworld as @a[x=0] at @s if block ~ ~-1 ~ #minecraft:portal_frame if block ~ ~ ~ #minecraft:portal_wall[axis=z] run function portals:teleportation/other/teleport_other_side_z

# Execute if Portal is On X-Axis
execute in minecraft:overworld as @a[x=0] at @s if block ~ ~-1 ~ #minecraft:portal_frame if block ~ ~ ~ #minecraft:portal_wall[axis=x] run function portals:teleportation/other/teleport_other_side_x