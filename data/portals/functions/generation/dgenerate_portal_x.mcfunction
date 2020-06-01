# Rudimentary Portal Creation

# Air Above Bridge Layer 1 and 2
execute as @s run fill ~ ~ ~-1 ~1 ~2 ~-2 minecraft:air replace

# Bridge Layer 1, 2 and Base Layer
execute as @s run fill ~-2 ~-1 ~-2 ~1 ~-1 ~ minecraft:crying_obsidian replace

# Top Layer
execute as @s run fill ~-2 ~3 ~ ~1 ~3 ~ minecraft:crying_obsidian replace

# Left Side
execute as @s run fill ~1 ~ ~ ~1 ~2 ~ minecraft:crying_obsidian replace

# Right Side
execute as @s run fill ~-2 ~ ~ ~-2 ~2 ~ minecraft:crying_obsidian replace

# Portal Frames
execute as @s run fill ~ ~ ~ ~-1 ~2 ~ minecraft:nether_portal[axis=x] replace