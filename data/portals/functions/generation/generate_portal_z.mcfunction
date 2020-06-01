# NOTE: This is being run as TemporaryDynamicTeleporter

# Rudimentary Portal Creation

# Air Above Bridge Layer 1 and 2
execute as @s run fill ~ ~ ~-1 ~-1 ~2 ~1 minecraft:air replace

# Bridge Layer 1, 2 and Base Layer
execute as @s run fill ~-1 ~-1 ~-2 ~1 ~-1 ~1 minecraft:crying_obsidian keep

# Top Layer
execute as @s run fill ~1 ~3 ~-2 ~1 ~3 ~1 minecraft:crying_obsidian keep

# Left Side
execute as @s run fill ~1 ~ ~1 ~1 ~2 ~1 minecraft:crying_obsidian keep

# Right Side
execute as @s run fill ~1 ~ ~-2 ~1 ~2 ~-2 minecraft:crying_obsidian keep

# Portal Frames
execute as @s run fill ~1 ~ ~ ~1 ~2 ~-1 minecraft:nether_portal[axis=z] keep