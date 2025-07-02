#put the correct thing in each hotbar slot
#slot 2 -- rollout
execute if score #ability1 value matches 0 run function jcm:player/character/inventory_slot_empty_macro {slot:"0",tag:"d_2empty",model:"jcm/gui/missing_ability",name:"jcm.ability.missing",color:"#808080",lore:"jcm.ability.missing.lore"}
execute if score #ability1 value matches 1 if entity @s[scores={inputCooldownA=..0,ballState=..0}] run function jcm:player/character/inventory_slot_macro {slot:"0",tag:"d_2a",model:"jcm/gui/dum_rollout",name:"jcm.ability.rollout",color:"gold",lore:"jcm.ability.rollout.lore"}
execute if score #ability1 value matches 1 if entity @s[scores={inputCooldownA=1..,ballState=..0}] run function jcm:player/character/inventory_slot_cooldown_macro {slot:"0",tag:"d_2b",model:"jcm/gui/dum_rollout",name:"jcm.ability.rollout",color:"gray",lore:"jcm.ability.rollout.lore"}
execute if score #ability1 value matches 1 if entity @s[scores={inputCooldownA=..0,ballState=1..}] run function jcm:player/character/inventory_slot_macro {slot:"0",tag:"d_2c",model:"jcm/gui/dum_cancel",name:"jcm.game.cancel",color:"gold",lore:"jcm.ability.rollout.lore"}
execute if score #ability1 value matches 1 if entity @s[scores={inputCooldownA=1..,ballState=1..}] run function jcm:player/character/inventory_slot_cooldown_macro {slot:"0",tag:"d_2d",model:"jcm/gui/dum_cancel",name:"jcm.game.cancel",color:"gray",lore:"jcm.ability.rollout.lore"}

#slot 3 -- shrink/grow
execute if score #ability2 value matches 0 run function jcm:player/character/inventory_slot_empty_macro {slot:"1",tag:"d_3empty",model:"jcm/gui/missing_ability",name:"jcm.ability.missing",color:"#808080",lore:"jcm.ability.missing.lore"}
execute if score #ability2 value matches 1 if entity @s[scores={inputCooldownB=..0,playerSize=..0}] run function jcm:player/character/inventory_slot_macro {slot:"1",tag:"d_3a",model:"jcm/gui/dum_shrink",name:"jcm.ability.shrink",color:"gold",lore:"jcm.ability.shrink.lore"}
execute if score #ability2 value matches 1 if entity @s[scores={inputCooldownB=1..,playerSize=..0}] run function jcm:player/character/inventory_slot_cooldown_macro {slot:"1",tag:"d_3b",model:"jcm/gui/dum_shrink",name:"jcm.ability.shrink",color:"gray",lore:"jcm.ability.shrink.lore"}
execute if score #ability2 value matches 1 if entity @s[scores={inputCooldownB=..0,playerSize=1..}] run function jcm:player/character/inventory_slot_macro {slot:"1",tag:"d_3c",model:"jcm/gui/dum_grow",name:"jcm.ability.grow",color:"gold",lore:"jcm.ability.shrink.lore"}
execute if score #ability2 value matches 1 if entity @s[scores={inputCooldownB=1..,playerSize=1..}] run function jcm:player/character/inventory_slot_cooldown_macro {slot:"1",tag:"d_3d",model:"jcm/gui/dum_grow",name:"jcm.ability.grow",color:"gray",lore:"jcm.ability.shrink.lore"}

#slot 4 -- suck/blow
execute if score #ability3 value matches 0 run function jcm:player/character/inventory_slot_empty_macro {slot:"2",tag:"d_4empty",model:"jcm/gui/missing_ability",name:"jcm.ability.missing",color:"#808080",lore:"jcm.ability.missing.lore"}
execute if score #ability3 value matches 1 if entity @s[scores={inputCooldownC=..0,suckState=..0}] run function jcm:player/character/inventory_slot_macro {slot:"2",tag:"d_4a",model:"jcm/gui/dum_inhale",name:"jcm.ability.inhale",color:"gold",lore:"jcm.ability.inhale.lore"}
execute if score #ability3 value matches 1 if entity @s[scores={inputCooldownC=1..,suckState=..0}] run function jcm:player/character/inventory_slot_cooldown_macro {slot:"2",tag:"d_4b",model:"jcm/gui/dum_inhale",name:"jcm.ability.inhale",color:"gray",lore:"jcm.ability.inhale.lore"}
execute if score #ability3 value matches 1 if entity @s[scores={inputCooldownC=..0,suckState=1..}] run function jcm:player/character/inventory_slot_macro {slot:"2",tag:"d_4c",model:"jcm/gui/dum_spit",name:"jcm.ability.spit",color:"gold",lore:"jcm.ability.inhale.lore"}
execute if score #ability3 value matches 1 if entity @s[scores={inputCooldownC=1..,suckState=1..}] run function jcm:player/character/inventory_slot_cooldown_macro {slot:"2",tag:"d_4d",model:"jcm/gui/dum_spit",name:"jcm.ability.spit",color:"gray",lore:"jcm.ability.inhale.lore"}

#slot 5 -- inflate
execute if score #ability4 value matches 0 run function jcm:player/character/inventory_slot_empty_macro {slot:"3",tag:"d_5empty",model:"jcm/gui/missing_ability",name:"jcm.ability.missing",color:"#808080",lore:"jcm.ability.missing.lore"}
execute if score #ability4 value matches 1 if entity @s[scores={inputCooldownD=..0,inflateState=..0}] run function jcm:player/character/inventory_slot_macro {slot:"3",tag:"d_5a",model:"jcm/gui/dum_inflate",name:"jcm.ability.inflate",color:"gold",lore:"jcm.ability.inflate.lore"}
execute if score #ability4 value matches 1 if entity @s[scores={inputCooldownD=1..,inflateState=..0}] run function jcm:player/character/inventory_slot_cooldown_macro {slot:"3",tag:"d_5b",model:"jcm/gui/dum_inflate",name:"jcm.ability.inflate",color:"gray",lore:"jcm.ability.inflate.lore"}
execute if score #ability4 value matches 1 if entity @s[scores={inputCooldownD=..0,inflateState=1..}] run function jcm:player/character/inventory_slot_macro {slot:"3",tag:"d_5c",model:"jcm/gui/dum_deflate",name:"jcm.ability.deflate",color:"gold",lore:"jcm.ability.inflate.lore"}
execute if score #ability4 value matches 1 if entity @s[scores={inputCooldownD=1..,inflateState=1..}] run function jcm:player/character/inventory_slot_cooldown_macro {slot:"3",tag:"d_5d",model:"jcm/gui/dum_deflate",name:"jcm.ability.deflate",color:"gray",lore:"jcm.ability.inflate.lore"}
