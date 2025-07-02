execute if score @s interactNearby matches ..0 run function jcm:player/character/inventory_slot_empty_no_tooltip_macro {slot:"4",tag:"d_iempty",model:"jcm/object/blank"}
execute if score @s interactNearby matches 1.. run function jcm:player/character/inventory_slot_macro {slot:"4",tag:"d_i",model:"jcm/gui/interact",name:"jcm.game.interact",color:"yellow",lore:""}
