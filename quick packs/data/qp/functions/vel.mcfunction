execute store result score .dummy pos_x run data get entity @s Pos[0] 2000.00
execute store result score .dummy pos_y run data get entity @s Pos[1] 2000.00
execute store result score .dummy pos_z run data get entity @s Pos[2] 2000.00
scoreboard players operation @s vel_x = .dummy pos_x
scoreboard players operation @s vel_x -= @s pos_x
scoreboard players operation @s vel_y = .dummy pos_y
scoreboard players operation @s vel_y -= @s pos_y
scoreboard players operation @s vel_z = .dummy pos_z
scoreboard players operation @s vel_z -= @s pos_z

scoreboard players operation @s pos_x = .dummy pos_x
scoreboard players operation @s pos_y = .dummy pos_y
scoreboard players operation @s pos_z = .dummy pos_z

scoreboard players set @s dummy 2
scoreboard players operation @s vel_x *= @s dummy
scoreboard players operation @s vel_z *= @s dummy

scoreboard players set @s dummy -1
execute as @s[scores={vel_x=..0}] run scoreboard players operation @s vel_x *= @s dummy
execute as @s[scores={vel_y=..0}] run scoreboard players operation @s vel_y *= @s dummy
execute as @s[scores={vel_z=..0}] run scoreboard players operation @s vel_z *= @s dummy
scoreboard players reset @s dummy
scoreboard players operation @s vel = @s vel_x
scoreboard players operation @s vel += @s vel_y
scoreboard players operation @s vel += @s vel_z