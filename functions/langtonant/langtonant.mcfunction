#兰顿蚂蚁
execute as @e[type=armor_stand,name=langtonant] at @s run fill ~5 ~-1 ~5 ~-5 ~-1 ~-5 minecraft:white_concrete replace minecraft:air []
execute as @e[type=armor_stand,name=langtonant] at @s if block ~ ~-1 ~ minecraft:white_concrete run tag @s add lta_white
execute as @e[type=armor_stand,name=langtonant] at @s if block ~ ~-1 ~ minecraft:black_concrete run tag @s add lta_black
execute as @e[type=armor_stand,name=langtonant,tag=lta_white] at @s run setblock ~ ~-1 ~ minecraft:black_concrete
execute as @e[type=armor_stand,name=langtonant,tag=lta_white] at @s run tp @s ~~~ ~-90
execute as @e[type=armor_stand,name=langtonant,tag=lta_black] at @s run setblock ~ ~-1 ~ minecraft:white_concrete
execute as @e[type=armor_stand,name=langtonant,tag=lta_black] at @s run tp @s ~~~ ~90
execute as @e[type=armor_stand,name=langtonant] at @s run tag @s remove lta_white
execute as @e[type=armor_stand,name=langtonant] at @s run tag @s remove lta_black
execute as @e[type=armor_stand,name=langtonant] at @s run tp @s ^^^1

#By Baby_2016