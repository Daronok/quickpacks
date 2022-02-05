function qp:vel
execute if score @s[tag=!cactus] vel matches 0 run tag @s add cactus
execute unless score @s vel matches 0 run function qp:cactus_camo/isntcactus
scoreboard players add @s[tag=cactus] cactus 1
execute as @s[tag=cactus,scores={cactus=2}] run function qp:cactus_camo/iscactus
execute as @e[type=falling_block,tag=cactus_marker] run data merge entity @s {Time:1}