#this is cracked
$tag @s[tag=hasSlot$(slot)] remove hasSlot$(slot)
$execute if items entity @s hotbar.$(slot) *[custom_data~{slot:$(slot)}] run tag @s add hasSlot$(slot)
$clear @s[gamemode=!creative,tag=!hasSlot$(slot)] *[custom_data~{slot:$(slot)}]
$execute if entity @s[tag=!noInventory2] run item replace entity @s hotbar.$(slot) with carrot_on_a_stick[item_model="$(model)",unbreakable={},tooltip_display={hidden_components:[unbreakable]},custom_data={$(tag):1b,slot:$(slot),hotbar_item:1b,empty:1b},custom_name={translate:"$(name)",color:"$(color)",italic:false},lore=[{translate:"$(lore)",color:white,italic:true}]] 1
$tag @s[tag=hasSlot$(slot)] remove hasSlot$(slot)
