#cauldron spawner
summon marker ~ ~1 ~ {Tags:["spawnObject","orangeCauldron","cauldron"],CustomName:[{translate:"jcm.editor.orange_cauldron",color:gold}]}

#spawn item display
summon item_display ~ ~1 ~ {Tags:["cauldronDisplay","eraseable"],item_display:"head",item:{id:"stone",components:{item_model:"jcm/object/tweedledum_cauldron"}}}