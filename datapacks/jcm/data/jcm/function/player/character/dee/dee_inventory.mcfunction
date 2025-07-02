#put the correct thing in each hotbar slot

#slot 3 -- extendo legs
execute if score #ability2 value matches 0 run function jcm:player/character/inventory_slot_empty_macro {slot:"0",tag:"d_3empty",model:"jcm/gui/missing_ability",name:"jcm.ability.missing",color:"#808080",lore:"jcm.ability.missing.lore"}
execute if score #ability2 value matches 1 if entity @s[scores={inputCooldownB=..0,playerSize=..0}] run function jcm:player/character/inventory_slot_macro {slot:"0",tag:"d_3a",model:"jcm/gui/dee_extend",name:"jcm.ability.extend",color:"aqua",lore:"jcm.ability.extend.lore"}
execute if score #ability2 value matches 1 if entity @s[scores={inputCooldownB=1..,playerSize=..0}] run function jcm:player/character/inventory_slot_cooldown_macro {slot:"0",tag:"d_3b",model:"jcm/gui/dee_extend",name:"jcm.ability.extend",color:"gray",lore:"jcm.ability.extend.lore"}
execute if score #ability2 value matches 1 if entity @s[scores={inputCooldownB=..0,playerSize=1..}] run function jcm:player/character/inventory_slot_macro {slot:"0",tag:"d_3c",model:"jcm/gui/dee_cancel",name:"jcm.game.cancel",color:"aqua",lore:"jcm.ability.extend.lore"}
execute if score #ability2 value matches 1 if entity @s[scores={inputCooldownB=1..,playerSize=1..}] run function jcm:player/character/inventory_slot_cooldown_macro {slot:"0",tag:"d_3d",model:"jcm/gui/dee_cancel",name:"jcm.game.cancel",color:"gray",lore:"jcm.ability.extend.lore"}

#slot 4 -- pick up
execute if score #ability3 value matches 0 run function jcm:player/character/inventory_slot_empty_macro {slot:"1",tag:"d_4empty",model:"jcm/gui/missing_ability",name:"jcm.ability.missing",color:"#808080",lore:"jcm.ability.missing.lore"}
execute if score #ability3 value matches 1 if entity @s[scores={inputCooldownC=..0,pickUpState=..0}] run function jcm:player/character/inventory_slot_macro {slot:"1",tag:"d_4a",model:"jcm/gui/dee_move_active",name:"jcm.ability.pick_up",color:"aqua",lore:"jcm.ability.pick_up.lore"}
execute if score #ability3 value matches 1 if entity @s[scores={inputCooldownC=1..,pickUpState=..0}] run function jcm:player/character/inventory_slot_cooldown_macro {slot:"1",tag:"d_4b",model:"jcm/gui/dee_move_idle",name:"jcm.ability.pick_up",color:"gray",lore:"jcm.ability.pick_up.lore"}
execute if score #ability3 value matches 1 if entity @s[scores={inputCooldownC=..0,pickUpState=1..}] run function jcm:player/character/inventory_slot_macro {slot:"1",tag:"d_4c",model:"jcm/gui/dee_throw",name:"jcm.ability.throw",color:"aqua",lore:"jcm.ability.pick_up.lore"}
execute if score #ability3 value matches 1 if entity @s[scores={inputCooldownC=1..,pickUpState=1..}] run function jcm:player/character/inventory_slot_cooldown_macro {slot:"1",tag:"d_4d",model:"jcm/gui/dee_throw",name:"jcm.ability.throw",color:"gray",lore:"jcm.ability.pick_up.lore"}

#slot 5 -- trampoline
execute if score #ability4 value matches 0 run function jcm:player/character/inventory_slot_empty_macro {slot:"2",tag:"d_5empty",model:"jcm/gui/missing_ability",name:"jcm.ability.missing",color:"#808080",lore:"jcm.ability.missing.lore"}
execute if score #ability4 value matches 1 if entity @s[scores={inputCooldownD=..0,trampolineState=..0}] run function jcm:player/character/inventory_slot_macro {slot:"2",tag:"d_5a",model:"jcm/gui/dee_trampoline",name:"jcm.ability.trampoline",color:"aqua",lore:"jcm.ability.trampoline.lore"}
execute if score #ability4 value matches 1 if entity @s[scores={inputCooldownD=1..,trampolineState=..0}] run function jcm:player/character/inventory_slot_cooldown_macro {slot:"2",tag:"d_5b",model:"jcm/gui/dee_trampoline",name:"jcm.ability.trampoline",color:"gray",lore:"jcm.ability.trampoline.lore"}
execute if score #ability4 value matches 1 if entity @s[scores={inputCooldownD=..0,trampolineState=1..}] run function jcm:player/character/inventory_slot_macro {slot:"2",tag:"d_5c",model:"jcm/gui/dee_cancel",name:"jcm.game.cancel",color:"aqua",lore:"jcm.ability.trampoline.lore"}
execute if score #ability4 value matches 1 if entity @s[scores={inputCooldownD=1..,trampolineState=1..}] run function jcm:player/character/inventory_slot_cooldown_macro {slot:"2",tag:"d_5d",model:"jcm/gui/dee_cancel",name:"jcm.game.cancel",color:"gray",lore:"jcm.ability.trampoline.lore"}

#slot 6 -- clone self
execute if score #ability5 value matches 0 run function jcm:player/character/inventory_slot_empty_macro {slot:"3",tag:"d_6empty",model:"jcm/gui/missing_ability",name:"jcm.ability.missing",color:"#808080",lore:"jcm.ability.missing.lore"}
execute if score #ability5 value matches 1 if entity @s[scores={inputCooldownE=..0}] run function jcm:player/character/inventory_slot_macro {slot:"3",tag:"d_6a",model:"jcm/gui/dee_clone",name:"jcm.ability.clone",color:"aqua",lore:"jcm.ability.clone.lore"}
execute if score #ability5 value matches 1 if entity @s[scores={inputCooldownE=1..}] run function jcm:player/character/inventory_slot_cooldown_macro {slot:"3",tag:"d_6b",model:"jcm/gui/dee_clone",name:"jcm.ability.clone",color:"gray",lore:"jcm.ability.clone.lore"}
#execute if score #ability5 value matches 1 if entity @s[scores={inputCooldownE=..0,cloneState=1..}] run function jcm:player/character/inventory_slot_macro {slot:"3",tag:"d_6c",model:"stone",name:"jcm.ability.deflate",color:"aqua",lore:"jcm.ability.clone.lore"}
#execute if score #ability5 value matches 1 if entity @s[scores={inputCooldownE=1..,cloneState=1..}] run function jcm:player/character/inventory_slot_cooldown_macro {slot:"3",tag:"d_6d",model:"stone",name:"jcm.ability.deflate",color:"gray",lore:"jcm.ability.clone.lore"}
