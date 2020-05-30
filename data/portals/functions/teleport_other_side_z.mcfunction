# Teleport to Other Side
# Manage Auto Portal Creation Here in Other Side

# Teleport Player Offset From Portal
execute as @s in alexis:glass run tp ~-1.5 ~ ~

# Rudimentary Portal Creation

# Bridge Layer 1
execute as @s in alexis:glass run setblock ~-1 ~-1 ~-1 minecraft:crying_obsidian keep
execute as @s in alexis:glass run setblock ~-1 ~-1 ~ minecraft:crying_obsidian keep
execute as @s in alexis:glass run setblock ~-1 ~-1 ~1 minecraft:crying_obsidian keep
execute as @s in alexis:glass run setblock ~-1 ~-1 ~2 minecraft:crying_obsidian keep

# Bridge Layer 2
execute as @s in alexis:glass run setblock ~-2 ~-1 ~-1 minecraft:crying_obsidian keep
execute as @s in alexis:glass run setblock ~-2 ~-1 ~ minecraft:crying_obsidian keep
execute as @s in alexis:glass run setblock ~-2 ~-1 ~1 minecraft:crying_obsidian keep
execute as @s in alexis:glass run setblock ~-2 ~-1 ~2 minecraft:crying_obsidian keep

# Base Layer
execute as @s in alexis:glass run setblock ~ ~-1 ~-1 minecraft:crying_obsidian keep
execute as @s in alexis:glass run setblock ~ ~-1 ~ minecraft:crying_obsidian keep
execute as @s in alexis:glass run setblock ~ ~-1 ~1 minecraft:crying_obsidian keep
execute as @s in alexis:glass run setblock ~ ~-1 ~2 minecraft:crying_obsidian keep

# Top Layer
execute as @s in alexis:glass run setblock ~ ~3 ~-1 minecraft:crying_obsidian keep
execute as @s in alexis:glass run setblock ~ ~3 ~ minecraft:crying_obsidian keep
execute as @s in alexis:glass run setblock ~ ~3 ~1 minecraft:crying_obsidian keep
execute as @s in alexis:glass run setblock ~ ~3 ~2 minecraft:crying_obsidian keep

# Left Side
execute as @s in alexis:glass run setblock ~ ~0 ~2 minecraft:crying_obsidian keep
execute as @s in alexis:glass run setblock ~ ~1 ~2 minecraft:crying_obsidian keep
execute as @s in alexis:glass run setblock ~ ~2 ~2 minecraft:crying_obsidian keep

# Right Side
execute as @s in alexis:glass run setblock ~ ~0 ~-1 minecraft:crying_obsidian keep
execute as @s in alexis:glass run setblock ~ ~1 ~-1 minecraft:crying_obsidian keep
execute as @s in alexis:glass run setblock ~ ~2 ~-1 minecraft:crying_obsidian keep

# Portal Frames
execute as @s in alexis:glass run fill ~ ~0 ~1 ~ ~2 ~ minecraft:nether_portal[axis=z] keep