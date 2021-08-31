execute unless score PowerTimer tardis_int_prop matches 1000 if score Power tardis_int_prop matches 1 run scoreboard players add PowerTimer tardis_int_prop 1
execute if score Power tardis_int_prop matches 2 run scoreboard players set PowerTimer tardis_int_prop 0

execute if score Power tardis_int_prop matches 1 run item replace entity @e[name=tardis_ext] armor.head with minecraft:wooden_shovel{CustomModelData:111111}
execute if score Power tardis_int_prop matches 0 run item replace entity @e[name=tardis_ext] armor.head with minecraft:wooden_shovel{CustomModelData:111112}

execute if score Power tardis_int_prop matches 1 run item replace entity @e[name=rotor] armor.head with minecraft:wooden_shovel{CustomModelData:111113}
execute if score Power tardis_int_prop matches 0 run item replace entity @e[name=rotor] armor.head with minecraft:wooden_shovel{CustomModelData:111114}

execute if score Power tardis_int_prop matches 1 run item replace entity @e[type=item_frame,tag=monitor] container.0 with wooden_shovel{CustomModelData:222223}
execute if score Power tardis_int_prop matches 0 run item replace entity @e[type=item_frame,tag=monitor] container.0 with wooden_shovel{CustomModelData:222222}

execute as @e[tag=monitor] if score PowerTimer tardis_int_prop matches 150 if score Power tardis_int_prop matches 1 run playsound minecraft:tardis.monitor_beep master @a 0 67 -12 999999
execute as @e[tag=monitor] if score PowerTimer tardis_int_prop matches 150 if score Power tardis_int_prop matches 1 run playsound minecraft:tardis.primer master @a 0 67 -12 999999
execute in tardis:tardis as @e[tag=monitor] if score PowerTimer tardis_int_prop matches 150 if score Power tardis_int_prop matches 1 run particle minecraft:cloud 0 68 -12 10 4 10 0.1 500 force
execute in tardis:tardis as @e[name=fillcontroller] if score PowerTimer tardis_int_prop matches 150 if score Power tardis_int_prop matches 1 run fill -11 64 -2 11 64 -23 minecraft:orange_stained_glass replace minecraft:black_stained_glass


execute as @e[tag=monitor] if score PowerTimer tardis_int_prop matches 150 if score Power tardis_int_prop matches 0 run playsound minecraft:tardis.monitor_beep master @a 0 67 -12 999999
execute as @e[tag=monitor] if score PowerTimer tardis_int_prop matches 150 if score Power tardis_int_prop matches 0 run playsound minecraft:tardis.shutdown master @a 0 67 -12 999999
execute in tardis:tardis as @e[tag=monitor] if score Power tardis_int_prop matches 0 run particle minecraft:cloud 0 68 -12 10 4 10 0.1 500 force
execute in tardis:tardis as @e[name=fillcontroller] if score PowerTimer tardis_int_prop matches 150 if score Power tardis_int_prop matches 0 run fill -11 64 -2 11 64 -23 minecraft:black_stained_glass replace minecraft:orange_stained_glass

#Bottom Row Lights On and Off
execute in tardis:tardis as @e[name=fillcontroller] if score Power tardis_int_prop matches 3 if score PowerTimer tardis_int_prop matches 1 run fill 16 64 -28 -16 64 4 minecraft:dark_prismarine_slab[type=bottom] replace warped_slab[type=bottom]
execute as @e[tag=monitor] if score PowerTimer tardis_int_prop matches 1 run playsound minecraft:tardis.lights_toggle_1 master @a 0 67 -12 999999
execute in tardis:tardis as @e[name=fillcontroller] if score Power tardis_int_prop matches 0 run fill 16 64 -28 -16 64 4 minecraft:dark_prismarine_slab[type=bottom] replace warped_slab[type=bottom]
execute in tardis:tardis as @e[name=fillcontroller] if score Power tardis_int_prop matches 1 if score PowerTimer tardis_int_prop matches 1 run fill 16 64 -28 -16 64 4 minecraft:dark_prismarine_slab[type=bottom] replace warped_slab[type=bottom]



execute if score Power tardis_int_prop matches 2 run scoreboard players set Power tardis_int_prop 1
# execute if score Power tardis_int_prop matches 2 run scoreboard players set PowerActive tardis_int_prop 1
execute if score Power tardis_int_prop matches 0 run scoreboard players set Power tardis_int_prop 1
# execute if score Power tardis_int_prop matches 0 run scoreboard players set PowerActive tardis_int_prop 0

# FILL COMMANDS FOR FLOOR LIGHTS -- DELETE LATER
# /fill -10 64 -22 10 64 -2 minecraft:coal_block replace minecraft:dark_prismarine_slab
# /fill -10 64 -22 10 64 -2 minecraft:coal_block replace minecraft:dark_prismarine_slab
# /fill 16 64 -28 -16 64 4 minecraft:dark_prismarine_slab[type=bottom] replace warped_slab[type=bottom]
# /fill 16 64 -28 -16 64 4 warped_slab[type=bottom] replace minecraft:dark_prismarine_slab[type=bottom]