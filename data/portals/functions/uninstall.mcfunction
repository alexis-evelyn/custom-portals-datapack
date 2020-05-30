scoreboard objectives remove used_flintsteel
scoreboard objectives remove used_firecharge
scoreboard objectives remove search_fire
scoreboard objectives remove skip_fire

# Remove Forceloading of 0, 0 (Previously Used for Data Storage)
forceload remove 0 0

# Remove Armor Stand Used For Data Storage
kill @e[name=CustomPortalsDataStorage, type=minecraft:armor_stand]

# Announce Uninstall
tellraw @p ["",{"text":"Uninstalled Custom Portals Datapack!!! ","bold":false,"color":"aqua"},{"text":"Click here for the command to reinstall the datapack in the future!!!","bold":false,"underlined":true,"color":"gold","clickEvent":{"action":"suggest_command","value":"/function portals:init"}}]