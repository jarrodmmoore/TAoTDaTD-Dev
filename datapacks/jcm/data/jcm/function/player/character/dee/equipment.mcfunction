#noInventory? show nothing
execute if entity @s[tag=noInventory] run return run function jcm:player/spectator/keep_inventory_clear
#=====

#make sure each body group is equipped
execute store result score #equipmentTest value run execute if items entity @s armor.head *[custom_data~{deeEquipment:1}]
execute if score #equipmentTest value matches 0 run clear @s *[custom_data~{deeEquipment:1}]
execute if entity @s[tag=!bodyHideHead,scores={trampolineState=..0}] run item replace entity @s armor.head with blue_dye[item_model="jcm/object/tweedledee_head",custom_data={deeEquipment:1},equippable={slot:head},tooltip_display={hide_tooltip:true},enchantments={"minecraft:binding_curse":1},enchantment_glint_override=false]
execute if entity @s[tag=!bodyHideHead,scores={trampolineState=1..}] run item replace entity @s armor.head with blue_dye[item_model="jcm/object/tweedledee_trampoline",custom_data={deeEquipment:1},equippable={slot:head},tooltip_display={hide_tooltip:true},enchantments={"minecraft:binding_curse":1},enchantment_glint_override=false]
execute if entity @s[tag=bodyHideHead] if items entity @s armor.head * run item replace entity @s armor.head with air

execute store result score #equipmentTest value run execute if items entity @s armor.chest *[custom_data~{deeEquipment:2}]
execute if score #equipmentTest value matches 0 run clear @s *[custom_data~{deeEquipment:2}]
execute if entity @s[tag=!bodyHideChest] run item replace entity @s armor.chest with blue_dye[item_model="jcm/object/blank",custom_data={deeEquipment:2},equippable={asset_id:"dee",slot:chest},tooltip_display={hide_tooltip:true},enchantments={"minecraft:binding_curse":1},enchantment_glint_override=false]
execute if entity @s[tag=bodyHideChest] if items entity @s armor.chest * run item replace entity @s armor.chest with air

execute store result score #equipmentTest value run execute if items entity @s armor.legs *[custom_data~{deeEquipment:3}]
execute if score #equipmentTest value matches 0 run clear @s *[custom_data~{deeEquipment:3}]
execute if entity @s[tag=!bodyHideLegs] run item replace entity @s armor.legs with blue_dye[item_model="jcm/object/blank",custom_data={deeEquipment:3},equippable={asset_id:"dee",slot:legs},tooltip_display={hide_tooltip:true},enchantments={"minecraft:binding_curse":1},enchantment_glint_override=false]
execute if entity @s[tag=bodyHideLegs] if items entity @s armor.legs * run item replace entity @s armor.legs with air

execute store result score #equipmentTest value run execute if items entity @s armor.feet *[custom_data~{deeEquipment:4}]
execute if score #equipmentTest value matches 0 run clear @s *[custom_data~{deeEquipment:4}]
execute if entity @s[tag=!bodyHideBoots] run item replace entity @s armor.feet with blue_dye[item_model="jcm/object/blank",custom_data={deeEquipment:4},equippable={slot:feet},tooltip_display={hide_tooltip:true},enchantments={"minecraft:binding_curse":1},enchantment_glint_override=false]
execute if entity @s[tag=bodyHideBoots] if items entity @s armor.feet * run item replace entity @s armor.feet with air
