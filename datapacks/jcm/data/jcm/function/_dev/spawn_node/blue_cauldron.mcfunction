#cauldron spawner
summon marker ~ ~1 ~ {Tags:["spawnObject","blueCauldron","cauldron","tickObject"],CustomName:[{translate:"jcm.editor.blue_cauldron",color:aqua}]}

#spawn item display
summon item_display ~ ~1 ~ {Tags:["cauldronDisplay","eraseable"],item_display:"head",item:{id:"stone",components:{item_model:"jcm/object/tweedledee_cauldron"}}}