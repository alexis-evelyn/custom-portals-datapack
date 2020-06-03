function portals:detection/detect_portal_z

# Only Run X Axis Detection if Z Axis Failed
execute unless entity @e[type=minecraft:armor_stand, name=Found, tag=success] run function portals:detection/detect_portal_x

kill @e[type=minecraft:armor_stand, name=Found]