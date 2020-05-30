# Directly At Fire
execute as @e[type=minecraft:armor_stand, name=Found] at @s if block ~ ~-1 ~ #minecraft:portal_frame if block ~ ~ ~-1 #minecraft:portal_frame at @s run setblock ~ ~ ~ minecraft:nether_portal[axis=z] replace

execute as @e[type=minecraft:armor_stand, name=Found] at @s if block ~ ~-1 ~ #minecraft:portal_frame if block ~ ~ ~1 #minecraft:portal_frame at @s run setblock ~ ~ ~ minecraft:nether_portal[axis=z] replace

# One Above Fire
execute as @e[type=minecraft:armor_stand, name=Found] at @s if block ~ ~1 ~ #minecraft:air if block ~ ~1 ~-1 #minecraft:portal_frame at @s run setblock ~ ~1 ~ minecraft:nether_portal[axis=z] keep

execute as @e[type=minecraft:armor_stand, name=Found] at @s if block ~ ~1 ~ #minecraft:air if block ~ ~1 ~1 #minecraft:portal_frame at @s run setblock ~ ~1 ~ minecraft:nether_portal[axis=z] keep

# Two Above Fire
execute as @e[type=minecraft:armor_stand, name=Found] at @s if block ~ ~3 ~ #minecraft:portal_frame if block ~ ~2 ~ #minecraft:air if block ~ ~2 ~1 #minecraft:portal_frame at @s run setblock ~ ~2 ~ minecraft:nether_portal[axis=z] keep

execute as @e[type=minecraft:armor_stand, name=Found] at @s if block ~ ~3 ~ #minecraft:portal_frame if block ~ ~2 ~ #minecraft:air if block ~ ~2 ~-1 #minecraft:portal_frame at @s run setblock ~ ~2 ~ minecraft:nether_portal[axis=z] keep

###
# Positive Z Directly At Fire
execute as @e[type=minecraft:armor_stand, name=Found] at @s if block ~ ~-1 ~1 #minecraft:portal_frame if block ~ ~ ~2 #minecraft:portal_frame at @s run setblock ~ ~ ~1 minecraft:nether_portal[axis=z] keep

# Positive Z One Above Fire
execute as @e[type=minecraft:armor_stand, name=Found] at @s if block ~ ~1 ~1 #minecraft:air if block ~ ~1 ~2 #minecraft:portal_frame at @s run setblock ~ ~1 ~1 minecraft:nether_portal[axis=z] keep

# Positive Z Two Above Fire
execute as @e[type=minecraft:armor_stand, name=Found] at @s if block ~ ~3 ~1 #minecraft:portal_frame if block ~ ~2 ~2 #minecraft:portal_frame if block ~ ~2 ~1 #minecraft:air at @s run setblock ~ ~2 ~1 minecraft:nether_portal[axis=z] keep

###
# Negative Z Directly At Fire
execute as @e[type=minecraft:armor_stand, name=Found] at @s if block ~ ~-1 ~-1 #minecraft:portal_frame if block ~ ~ ~-2 #minecraft:portal_frame at @s run setblock ~ ~ ~-1 minecraft:nether_portal[axis=z] keep

# Negative Z One Above Fire
execute as @e[type=minecraft:armor_stand, name=Found] at @s if block ~ ~1 ~-1 #minecraft:air if block ~ ~1 ~-2 #minecraft:portal_frame at @s run setblock ~ ~1 ~-1 minecraft:nether_portal[axis=z] keep

# Negative Z Two Above Fire
execute as @e[type=minecraft:armor_stand, name=Found] at @s if block ~ ~3 ~-1 #minecraft:portal_frame if block ~ ~2 ~-2 #minecraft:portal_frame if block ~ ~2 ~-1 #minecraft:air at @s run setblock ~ ~2 ~-1 minecraft:nether_portal[axis=z] keep

# Verify Proper Portal Creation
# NOTE: Use Barrier Blocks Above Then Set To Nether Portal Blocks on Z Axis
function portals:verify_portal_z