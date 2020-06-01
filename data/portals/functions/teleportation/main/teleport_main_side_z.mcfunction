# Teleport to Main Side
# Manage Auto Portal Creation Here in Main Side

# Summon Armorstand
function portals:teleportation/positioning/summon_armorstand

# Teleport Armorstand to Other Side
execute as @e[type=armor_stand, name=TemporaryDynamicTeleporter, limit=1] run tp @s @e[name=CustomPortalsMainSideMarker, type=armor_stand, limit=1]

# Teleport Armorstand to Player Position
function portals:teleportation/positioning/teleport_armorstand_z

# Rudimentary Portal Creation

# Air Above Bridge Layer 1 and 2
execute as @s run fill ~-1 ~ ~ ~-2 ~2 ~1 minecraft:air replace

# Bridge Layer 1, 2 and Base Layer
execute as @s run fill ~ ~-1 ~-1 ~-2 ~-1 ~2 minecraft:crying_obsidian keep

# Top Layer
execute as @s run fill ~ ~3 ~-1 ~ ~3 ~2 minecraft:crying_obsidian keep

# Left Side
execute as @s run fill ~ ~ ~2 ~ ~2 ~2 minecraft:crying_obsidian keep

# Right Side
execute as @s run fill ~ ~ ~-1 ~ ~2 ~-1 minecraft:crying_obsidian keep

# Portal Frames
execute as @s run fill ~ ~ ~1 ~ ~2 ~ minecraft:nether_portal[axis=z] keep