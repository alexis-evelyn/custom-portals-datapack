# Announce Install if Fresh Install
# execute unless entity @e[name=CustomPortalsDataStorage, type=minecraft:armor_stand] run tellraw @p ["",{"text":"Installed Custom Portals Datapack!!! ","color":"aqua", "bold":false},{"text":"Click here for the command to uninstall the datapack in the future!!!", "color": "gold", "bold": false, "underlined": true, "clickEvent": {"action":"suggest_command","value":"/function portals:uninstall"}}]

# Used For Data Storage
forceload add 0 0

# Summon Armor Stand For Storing Data (If Doesn't Already Exist)
execute unless entity @e[name=CustomPortalsMainSideMarker, type=minecraft:armor_stand] run summon minecraft:armor_stand 0 -10 0 {CustomName:"\"CustomPortalsMainSideMarker\"", NoGravity: true, CustomNameVisible: false, Invisible: true, Marker: true}