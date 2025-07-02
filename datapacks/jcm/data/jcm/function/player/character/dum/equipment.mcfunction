#noInventory? show nothing
execute if entity @s[tag=noInventory] run return run function jcm:player/spectator/keep_inventory_clear
#=====

#make sure each body group is equipped
execute store result score #equipmentTest value run execute if items entity @s armor.head *[custom_data~{dumEquipment:1}]
execute if score #equipmentTest value matches 0 run clear @s *[custom_data~{dumEquipment:1}]
execute if entity @s[tag=!bodyHideHead] if entity @s[scores={inflateState=..0,suckState=..0,suckTime=..0}] run item replace entity @s armor.head with blue_dye[item_model="jcm/object/tweedledum_head",custom_data={dumEquipment:1},equippable={slot:head},tooltip_display={hide_tooltip:true},enchantments={"minecraft:binding_curse":1},enchantment_glint_override=false]
execute if entity @s[tag=!bodyHideHead] if entity @s[scores={inflateState=..0,suckState=..0,suckTime=1..}] run item replace entity @s armor.head with blue_dye[item_model="jcm/object/tweedledum_open_mouth",custom_data={dumEquipment:1},equippable={slot:head},tooltip_display={hide_tooltip:true},enchantments={"minecraft:binding_curse":1},enchantment_glint_override=false]
execute if entity @s[tag=!bodyHideHead] if entity @s[scores={inflateState=..0,suckState=1..}] run item replace entity @s armor.head with blue_dye[item_model="jcm/object/tweedledum_closed_mouth",custom_data={dumEquipment:1},equippable={slot:head},tooltip_display={hide_tooltip:true},enchantments={"minecraft:binding_curse":1},enchantment_glint_override=false]
execute if entity @s[tag=!bodyHideHead] if entity @s[scores={inflateState=1..}] run item replace entity @s armor.head with blue_dye[item_model="jcm/object/tweedledum_balloon",custom_data={dumEquipment:1},equippable={slot:head},tooltip_display={hide_tooltip:true},enchantments={"minecraft:binding_curse":1},enchantment_glint_override=false]
execute if entity @s[tag=bodyHideHead] if items entity @s armor.head * run item replace entity @s armor.head with air

execute store result score #equipmentTest value run execute if items entity @s armor.chest *[custom_data~{dumEquipment:2}]
execute if score #equipmentTest value matches 0 run clear @s *[custom_data~{dumEquipment:2}]
execute if entity @s[tag=!bodyHideChest] run item replace entity @s armor.chest with blue_dye[item_model="jcm/object/blank",custom_data={dumEquipment:2},equippable={asset_id:"dum",slot:chest},tooltip_display={hide_tooltip:true},enchantments={"minecraft:binding_curse":1},enchantment_glint_override=false]
execute if entity @s[tag=bodyHideChest] if items entity @s armor.chest * run item replace entity @s armor.chest with air

execute store result score #equipmentTest value run execute if items entity @s armor.legs *[custom_data~{dumEquipment:3}]
execute if score #equipmentTest value matches 0 run clear @s *[custom_data~{dumEquipment:3}]
execute if entity @s[tag=!bodyHideLegs] run item replace entity @s armor.legs with blue_dye[item_model="jcm/object/blank",custom_data={dumEquipment:3},equippable={asset_id:"dum",slot:legs},tooltip_display={hide_tooltip:true},enchantments={"minecraft:binding_curse":1},enchantment_glint_override=false]
execute if entity @s[tag=bodyHideLegs] if items entity @s armor.legs * run item replace entity @s armor.legs with air

execute store result score #equipmentTest value run execute if items entity @s armor.feet *[custom_data~{dumEquipment:4}]
execute if score #equipmentTest value matches 0 run clear @s *[custom_data~{dumEquipment:4}]
execute if entity @s[tag=!bodyHideBoots] run item replace entity @s armor.feet with blue_dye[item_model="jcm/object/blank",custom_data={dumEquipment:4},equippable={asset_id:"dum",slot:feet},tooltip_display={hide_tooltip:true},enchantments={"minecraft:binding_curse":1},enchantment_glint_override=false]
execute if entity @s[tag=bodyHideBoots] if items entity @s armor.feet * run item replace entity @s armor.feet with air
