# Teleport to Other Side
# Manage Auto Portal Creation Here in Other Side

# Teleport Player Offset From Portal
execute as @s in alexis:glass run tp ~-1.5 ~ ~

# Rudimentary Portal Creation

# Air Above Bridge Layer 1 and 2
execute as @s in alexis:glass run fill ~-1 ~ ~ ~-2 ~2 ~1 minecraft:air replace

# Bridge Layer 1, 2 and Base Layer
execute as @s in alexis:glass run fill ~ ~-1 ~-1 ~-2 ~-1 ~2 minecraft:crying_obsidian keep

# Top Layer
execute as @s in alexis:glass run fill ~ ~3 ~-1 ~ ~3 ~2 minecraft:crying_obsidian keep

# Left Side
execute as @s in alexis:glass run fill ~ ~ ~2 ~ ~2 ~2 minecraft:crying_obsidian keep

# Right Side
execute as @s in alexis:glass run fill ~ ~ ~-1 ~ ~2 ~-1 minecraft:crying_obsidian keep

# Portal Frames
execute as @s in alexis:glass run fill ~ ~ ~1 ~ ~2 ~ minecraft:nether_portal[axis=z] keep