#this is cracked
$tag @s[tag=hasSlot$(slot)] remove hasSlot$(slot)
$execute if items entity @s hotbar.$(slot) *[custom_data~{slot:$(slot)}] run tag @s add hasSlot$(slot)
$clear @s[gamemode=!creative,tag=!hasSlot$(slot)] *[custom_data~{slot:$(slot)}]
$execute if entity @s[tag=!noInventory2] run item replace entity @s hotbar.$(slot) with carrot_on_a_stick[item_model="$(model)",unbreakable={},tooltip_display={hide_tooltip:true},custom_name=[{text:""}],custom_data={$(tag):1b,slot:$(slot)}] 1
$tag @s[tag=hasSlot$(slot)] remove hasSlot$(slot)