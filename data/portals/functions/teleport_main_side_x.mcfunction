# Teleport to Main Side
# Manage Auto Portal Creation Here in Main Side

# Teleport Player Offset From Portal
execute as @s in minecraft:overworld run tp ~ ~ ~-1.5

# Rudimentary Portal Creation

# Bridge Layer 1
execute as @s in minecraft:overworld run fill ~-2 ~-1 ~-1 ~1 ~-1 ~-1 minecraft:crying_obsidian keep

# Bridge Layer 2
execute as @s in minecraft:overworld run fill ~-2 ~-1 ~-2 ~1 ~-1 ~-2 minecraft:crying_obsidian keep

# Base Layer
execute as @s in minecraft:overworld run fill ~-2 ~-1 ~ ~1 ~-1 ~ minecraft:crying_obsidian keep

# Top Layer
execute as @s in minecraft:overworld run fill ~-2 ~3 ~ ~1 ~3 ~ minecraft:crying_obsidian keep

# Left Side
execute as @s in minecraft:overworld run fill ~1 ~ ~ ~1 ~2 ~ minecraft:crying_obsidian keep

# Right Side
execute as @s in minecraft:overworld run fill ~-2 ~ ~ ~-2 ~2 ~ minecraft:crying_obsidian keep

# Portal Frames
execute as @s in minecraft:overworld run fill ~ ~ ~ ~-1 ~2 ~ minecraft:nether_portal[axis=x] keep