# Teleport to Other Side
# Manage Auto Portal Creation Here in Other Side

# Summon Armorstand
# function portals:teleportation/positioning/summon_armorstand

# Teleport Armorstand to Other Side
execute as @e[type=armor_stand, name=TemporaryDynamicTeleporter, limit=1] run tp @s @e[name=CustomPortalsOtherSideMarker, type=armor_stand, limit=1]

# Teleport Armorstand to Player Position
function portals:teleportation/positioning/teleport_armorstand

# Teleport Player Offset From Portal
execute as @s run tp ~ ~ ~-1.5

# Rudimentary Portal Creation

# Air Above Bridge Layer 1 and 2
execute as @s run fill ~ ~ ~-1 ~1 ~2 ~-2 minecraft:air replace

# Bridge Layer 1, 2 and Base Layer
execute as @s run fill ~-2 ~-1 ~-2 ~1 ~-1 ~ minecraft:crying_obsidian keep

# Top Layer
execute as @s run fill ~-2 ~3 ~ ~1 ~3 ~ minecraft:crying_obsidian keep

# Left Side
execute as @s run fill ~1 ~ ~ ~1 ~2 ~ minecraft:crying_obsidian keep

# Right Side
execute as @s run fill ~-2 ~ ~ ~-2 ~2 ~ minecraft:crying_obsidian keep

# Portal Frames
execute as @s run fill ~ ~ ~ ~-1 ~2 ~ minecraft:nether_portal[axis=x] keep