execute if block -1 66 -11 minecraft:polished_blackstone_button[powered=true] run scoreboard players add Power tardis_int_prop 1
execute if score Power tardis_int_prop matches 2.. run scoreboard players set PowerTimer tardis_int_prop -3
execute if score Power tardis_int_prop matches 2.. run scoreboard players set Power tardis_int_prop 0
execute as @e[name=fillcontroller,limit=1] if block -1 66 -11 minecraft:polished_blackstone_button[powered=true] run setblock -1 66 -11 minecraft:polished_blackstone_button[powered=false,face=floor]