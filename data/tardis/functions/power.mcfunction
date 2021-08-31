execute if score Power tardis_int_prop matches 3 run item replace entity @e[name=tardis_ext] armor.head with minecraft:wooden_shovel{CustomModelData:111111}
execute if score Power tardis_int_prop matches 0 run item replace entity @e[name=tardis_ext] armor.head with minecraft:wooden_shovel{CustomModelData:111112}

execute if score Power tardis_int_prop matches 3 run item replace entity @e[name=rotor] armor.head with minecraft:wooden_shovel{CustomModelData:111113}
execute if score Power tardis_int_prop matches 0 run item replace entity @e[name=rotor] armor.head with minecraft:wooden_shovel{CustomModelData:111114}

execute if score Power tardis_int_prop matches 3 run item replace entity @e[type=item_frame,tag=monitor] container.0 with wooden_shovel{CustomModelData:222223}
execute if score Power tardis_int_prop matches 0 run item replace entity @e[type=item_frame,tag=monitor] container.0 with wooden_shovel{CustomModelData:222222}

execute as @e[tag=monitor] if score Power tardis_int_prop matches 3 run playsound minecraft:tardis.monitor_beep master @a 0 67 -12 0.2
execute as @e[tag=monitor] if score Power tardis_int_prop matches 3 run playsound minecraft:tardis.primer master @a 0 67 -12 0.2
execute in tardis:tardis as @e[tag=monitor] if score Power tardis_int_prop matches 3 run particle minecraft:cloud 0 65 -12 4 4 4 0.1 250 force

execute as @e[tag=monitor] if score Power tardis_int_prop matches 0 run playsound minecraft:tardis.monitor_beep master @a 0 67 -12 0.2
execute as @e[tag=monitor] if score Power tardis_int_prop matches 0 run playsound minecraft:tardis.shutdown master @a 0 67 -12 0.2
execute in tardis:tardis as @e[tag=monitor] if score Power tardis_int_prop matches 0 run particle minecraft:cloud 0 65 -12 4 4 4 0.1 250 force


execute if score Power tardis_int_prop matches 3 run scoreboard players set Power tardis_int_prop 4
execute if score Power tardis_int_prop matches 0 run scoreboard players set Power tardis_int_prop 1
