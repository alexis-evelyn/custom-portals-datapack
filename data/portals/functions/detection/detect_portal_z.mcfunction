# Directly At Fire
execute as @e[type=minecraft:armor_stand, name=Found] at @s if block ~ ~-1 ~ #minecraft:portal_frame if block ~ ~ ~-1 #minecraft:portal_frame at @s run setblock ~ ~ ~ minecraft:structure_void replace

execute as @e[type=minecraft:armor_stand, name=Found] at @s if block ~ ~-1 ~ #minecraft:portal_frame if block ~ ~ ~1 #minecraft:portal_frame at @s run setblock ~ ~ ~ minecraft:structure_void replace

# One Above Fire
execute as @e[type=minecraft:armor_stand, name=Found] at @s if block ~ ~1 ~ #minecraft:air if block ~ ~1 ~-1 #minecraft:portal_frame at @s run setblock ~ ~1 ~ minecraft:structure_void keep

execute as @e[type=minecraft:armor_stand, name=Found] at @s if block ~ ~1 ~ #minecraft:air if block ~ ~1 ~1 #minecraft:portal_frame at @s run setblock ~ ~1 ~ minecraft:structure_void keep

# Two Above Fire
execute as @e[type=minecraft:armor_stand, name=Found] at @s if block ~ ~3 ~ #minecraft:portal_frame if block ~ ~2 ~ #minecraft:air if block ~ ~2 ~1 #minecraft:portal_frame at @s run setblock ~ ~2 ~ minecraft:structure_void keep

execute as @e[type=minecraft:armor_stand, name=Found] at @s if block ~ ~3 ~ #minecraft:portal_frame if block ~ ~2 ~ #minecraft:air if block ~ ~2 ~-1 #minecraft:portal_frame at @s run setblock ~ ~2 ~ minecraft:structure_void keep

###
# Positive Z Directly At Fire
execute as @e[type=minecraft:armor_stand, name=Found] at @s if block ~ ~-1 ~1 #minecraft:portal_frame if block ~ ~ ~2 #minecraft:portal_frame at @s run setblock ~ ~ ~1 minecraft:structure_void keep

# Positive Z One Above Fire
execute as @e[type=minecraft:armor_stand, name=Found] at @s if block ~ ~1 ~1 #minecraft:air if block ~ ~1 ~2 #minecraft:portal_frame at @s run setblock ~ ~1 ~1 minecraft:structure_void keep

# Positive Z Two Above Fire
execute as @e[type=minecraft:armor_stand, name=Found] at @s if block ~ ~3 ~1 #minecraft:portal_frame if block ~ ~2 ~2 #minecraft:portal_frame if block ~ ~2 ~1 #minecraft:air at @s run setblock ~ ~2 ~1 minecraft:structure_void keep

###
# Negative Z Directly At Fire
execute as @e[type=minecraft:armor_stand, name=Found] at @s if block ~ ~-1 ~-1 #minecraft:portal_frame if block ~ ~ ~-2 #minecraft:portal_frame at @s run setblock ~ ~ ~-1 minecraft:structure_void keep

# Negative Z One Above Fire
execute as @e[type=minecraft:armor_stand, name=Found] at @s if block ~ ~1 ~-1 #minecraft:air if block ~ ~1 ~-2 #minecraft:portal_frame at @s run setblock ~ ~1 ~-1 minecraft:structure_void keep

# Negative Z Two Above Fire
execute as @e[type=minecraft:armor_stand, name=Found] at @s if block ~ ~3 ~-1 #minecraft:portal_frame if block ~ ~2 ~-2 #minecraft:portal_frame if block ~ ~2 ~-1 #minecraft:air at @s run setblock ~ ~2 ~-1 minecraft:structure_void keep

# Verify Proper Portal Creation
# NOTE: Use Barrier Blocks Above Then Set To Nether Portal Blocks on Z Axis
execute as @e[type=minecraft:armor_stand, name=Found] at @s run function portals:verification/verify_portal_z