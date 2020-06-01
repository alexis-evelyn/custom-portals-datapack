# Teleport to Other Side
# Manage Auto Portal Creation Here in Other Side

# Summon Armorstand
function portals:teleportation/positioning/summon_armorstand

# Teleport Armorstand to Other Side
execute as @e[type=armor_stand, name=TemporaryDynamicTeleporter, limit=1] run tp @s @e[name=CustomPortalsOtherSideMarker, type=armor_stand, limit=1]

# Teleport Armorstand to Player Position
function portals:teleportation/positioning/teleport_armorstand_z