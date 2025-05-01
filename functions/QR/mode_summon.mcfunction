#mode生成 版本7-40
execute unless entity @e[name=qr_module] run summon minecraft:armor_stand qr_module
scoreboard players add @e[name=qr_module] qr_prg 0
scoreboard players set @e[name=qr_module,scores={qr_prg=0}] qr_prg 1
execute as @e[name=qr_module,scores={qr_prg=1}] run scoreboard players operation @s qr_code = "mode" qr_uid
execute as @e[name=qr_module,scores={qr_prg=1}] run scoreboard players operation @s qr_code *= "4" NUM
execute as @e[name=qr_module,scores={qr_prg=1}] run scoreboard players add @s qr_code 17
execute as @e[name=qr_module,scores={qr_prg=1}] at @s run fill ~7~~7 ~~~ minecraft:white_concrete
execute as @e[name=qr_module,scores={qr_prg=1}] at @s run structure load finder_pattern ~~~
execute as @e[name=qr_module,scores={qr_prg=1}] at @s run setblock ~7~~8 minecraft:black_concrete

#alignment_pattern
execute as @e[name=qr_module,scores={qr_prg=1}] at @s unless entity @e[name=qr_module_a] run summon minecraft:armor_stand qr_module_a ~8~~6
scoreboard players add @e[name=qr_module_a] qr_prg 0
execute as @e[name=qr_module,scores={qr_prg=1}] run scoreboard players operation @e[name=qr_module_a,scores={qr_prg=0}] qr_code = @e[name=qr_module] qr_code
execute as @e[name=qr_module,scores={qr_prg=1}] run scoreboard players add @e[name=qr_module_a,scores={qr_prg=0}] qr_code -15
execute as @e[name=qr_module,scores={qr_prg=1}] as @e[name=qr_module_a,scores={qr_prg=0}] run scoreboard players operation @s qr_encode = @s qr_code
scoreboard players set @e[name=qr_module_a,scores={qr_prg=0}] qr_prg 1
execute as @e[name=qr_module_a] at @s if block ~-1~~ minecraft:black_concrete [] run setblock ~~~ minecraft:white_concrete
execute as @e[name=qr_module_a] at @s if block ~-1~~ minecraft:white_concrete [] run setblock ~~~ minecraft:black_concrete
execute as @e[name=qr_module_a] at @s if block ~~~-1 minecraft:black_concrete [] run setblock ~~~ minecraft:white_concrete
execute as @e[name=qr_module_a] at @s if block ~~~-1 minecraft:white_concrete [] run setblock ~~~ minecraft:black_concrete
execute as @e[name=qr_module_a] run scoreboard players operation @s qr_encode_lall = @s qr_code
execute as @e[name=qr_module_a] run scoreboard players operation @s qr_encode_lall /= "2" NUM
execute as @e[name=qr_module_a,scores={qr_prg=1}] if score @s qr_encode_lall = @s qr_encode at @s run summon minecraft:armor_stand qr_module_b ~-3~~-2

execute as @e[name=qr_module_a,scores={qr_prg=1}] at @s run tp @s ~1~~
execute as @e[name=qr_module_a,scores={qr_prg=3}] at @s run tp @s ~~~1
execute as @e[name=qr_module_a] run scoreboard players add @s qr_encode -1
execute as @e[name=qr_module_a] if score @s qr_encode matches 0 run scoreboard players add @s qr_prg 1
execute as @e[name=qr_module_a,scores={qr_prg=2}] run scoreboard players operation @s qr_encode = @s qr_code
execute as @e[name=qr_module_a,scores={qr_prg=2}] at @s run summon minecraft:armor_stand qr_pattern1 ~-1~~-6
execute as @e[name=qr_module_a,scores={qr_prg=2}] run scoreboard players set @s qr_prg 3
execute as @e[name=qr_module_a,scores={qr_prg=4}] at @s run setblock ~~~ minecraft:black_concrete
execute as @e[name=qr_module_a,scores={qr_prg=4}] at @e[name=qr_pattern1] run fill ~7~~7 ~~~ minecraft:white_concrete
execute as @e[name=qr_module_a,scores={qr_prg=4}] at @e[name=qr_pattern1] run structure load finder_pattern ~1~~
execute as @e[name=qr_module_a,scores={qr_prg=4}] at @s run fill ~-1~~1 ~6~~8 minecraft:white_concrete
execute as @e[name=qr_module_a,scores={qr_prg=4}] at @s run structure load finder_pattern ~~~2
execute as @e[name=qr_module_a,scores={qr_prg=4}] at @s run summon minecraft:armor_stand qr_pattern1 ~-1~~1
execute as @e[name=qr_module_a,scores={qr_prg=4}] at @e[name=qr_module] run summon minecraft:armor_stand qr_pattern1 
execute as @e[name=qr_module_a,scores={qr_prg=4}] run scoreboard players set @e[name=qr_module,scores={qr_prg=2}] qr_prg 3
execute as @e[name=qr_module_a,scores={qr_prg=4}] run kill @s

#Alignment Patterns
scoreboard players set @e[name=qr_module,scores={qr_prg=1}] qr_prg 2
execute as @e[name=qr_module,scores={qr_prg=3}] at @e[name=qr_module_b] run summon armor_stand ~~~ facing ~~~1 abort_sheltering qr_module_c 
execute as @e[name=qr_module,scores={qr_prg=3}] run scoreboard players operation @e[name=qr_module_c] qr_code = "mode" qr_uid
execute as @e[name=qr_module,scores={qr_prg=3}] run scoreboard players operation @e[name=qr_module_c] qr_code *= "2" NUM
execute as @e[name=qr_module,scores={qr_prg=3}] run scoreboard players add @e[name=qr_module_c] qr_code 2
execute as @e[name=qr_module,scores={qr_prg=3}] as @e[name=qr_module_c] run scoreboard players operation @s qr_encode = @s qr_code
scoreboard players set @e[name=qr_module,scores={qr_prg=3}] qr_prg 4
execute as @e[name=qr_module,scores={qr_prg=4}] as @e[name=qr_module_c,scores={qr_encode=1..}] at @s run tp @s ^^^1
execute as @e[name=qr_module,scores={qr_prg=4}] as @e[name=qr_module_c,scores={qr_encode=1..}] at @s run scoreboard players add @s qr_encode -1
execute as @e[name=qr_module,scores={qr_prg=4}] as @e[name=qr_module_c,scores={qr_encode=0}] at @s run summon minecraft:armor_stand ~~~ facing ~-1~~ abort_sheltering qr_module_d 
execute as @e[name=qr_module,scores={qr_prg=4}] as @e[name=qr_module_c,scores={qr_encode=0}] run tag @e[name=qr_module_d] add qr_module_e
execute as @e[name=qr_module,scores={qr_prg=4}] as @e[name=qr_module_c,scores={qr_encode=0}] at @s run summon minecraft:armor_stand ~~~ facing ~1~~ abort_sheltering qr_module_d 
execute as @e[name=qr_module,scores={qr_prg=4}] as @e[name=qr_module_c,scores={qr_encode=0}] at @s run summon minecraft:armor_stand ~~~ facing ~~~1 abort_sheltering qr_module_d 
execute as @e[name=qr_module,scores={qr_prg=4}] as @e[name=qr_module_c,scores={qr_encode=0}] run scoreboard players set @e[name=qr_module,scores={qr_prg=4}] qr_prg 5
execute as @e[name=qr_module,scores={qr_prg=5}] run scoreboard players operation @e[name=qr_module_d] qr_code = "mode" qr_uid
execute as @e[name=qr_module,scores={qr_prg=5}] run scoreboard players operation @e[name=qr_module_d] qr_code *= "2" NUM
execute as @e[name=qr_module,scores={qr_prg=5}] run scoreboard players add @e[name=qr_module_d] qr_code 2
execute as @e[name=qr_module,scores={qr_prg=5}] as @e[name=qr_module_d] run scoreboard players operation @s qr_encode = @s qr_code
scoreboard players set @e[name=qr_module,scores={qr_prg=5}] qr_prg 6
execute as @e[name=qr_module,scores={qr_prg=6}] as @e[name=qr_module_d,scores={qr_encode=1..}] at @s run tp @s ^^^1
execute as @e[name=qr_module,scores={qr_prg=6}] as @e[name=qr_module_d,scores={qr_encode=1..}] at @s run scoreboard players add @s qr_encode -1
execute as @e[name=qr_module,scores={qr_prg=6}] as @e[name=qr_module_d,tag=qr_module_e,scores={qr_encode=0}] at @s run summon minecraft:armor_stand ~~~ facing ~~~1 abort_sheltering qr_module_e 
execute as @e[name=qr_module,scores={qr_prg=6}] as @e[name=qr_module_d,scores={qr_encode=0}] run scoreboard players set @e[name=qr_module,scores={qr_prg=6}] qr_prg 7
execute as @e[name=qr_module,scores={qr_prg=7}] run scoreboard players operation @e[name=qr_module_e] qr_code = "mode" qr_uid
execute as @e[name=qr_module,scores={qr_prg=7}] run scoreboard players operation @e[name=qr_module_e] qr_code *= "2" NUM
execute as @e[name=qr_module,scores={qr_prg=7}] run scoreboard players add @e[name=qr_module_e] qr_code 2
execute as @e[name=qr_module,scores={qr_prg=7}] as @e[name=qr_module_e] run scoreboard players operation @s qr_encode = @s qr_code
scoreboard players set @e[name=qr_module,scores={qr_prg=7}] qr_prg 8
execute as @e[name=qr_module,scores={qr_prg=8}] as @e[name=qr_module_e,scores={qr_encode=1..}] at @s run tp @s ^^^1
execute as @e[name=qr_module,scores={qr_prg=8}] as @e[name=qr_module_e,scores={qr_encode=1..}] at @s run scoreboard players add @s qr_encode -1
execute as @e[name=qr_module,scores={qr_prg=8}] as @e[name=qr_module_e,scores={qr_encode=0}] run scoreboard players set @e[name=qr_module,scores={qr_prg=8}] qr_prg 9
execute as @e[name=qr_module,scores={qr_prg=9}] at @e[name=qr_module_b] run summon minecraft:armor_stand qr_pattern2
execute as @e[name=qr_module,scores={qr_prg=9}] at @e[name=qr_module_c] run summon minecraft:armor_stand qr_pattern2
execute as @e[name=qr_module,scores={qr_prg=9}] at @e[name=qr_module_d] run summon minecraft:armor_stand qr_pattern2
execute as @e[name=qr_module,scores={qr_prg=9}] at @e[name=qr_module_e] run summon minecraft:armor_stand qr_pattern2
execute as @e[name=qr_module,scores={qr_prg=9}] run kill @e[name=qr_module_b]
execute as @e[name=qr_module,scores={qr_prg=9}] run kill @e[name=qr_module_c]
execute as @e[name=qr_module,scores={qr_prg=9}] run kill @e[name=qr_module_d]
execute as @e[name=qr_module,scores={qr_prg=9}] run kill @e[name=qr_module_e]
execute as @e[name=qr_module,scores={qr_prg=9}] at @e[name=qr_pattern2] run structure load alignment_pattern ~~~
execute as @e[name=qr_module,scores={qr_prg=9}] run kill @e[name=qr_pattern1]
execute as @e[name=qr_module,scores={qr_prg=9}] run kill @e[name=qr_pattern2]
scoreboard players set @e[name=qr_module,scores={qr_prg=9}] qr_prg 10

#route
execute as @e[name=qr_module,scores={qr_prg=10}] at @s run summon minecraft:armor_stand qr_module_f
execute as @e[name=qr_module,scores={qr_prg=10}] run scoreboard players operation @e[name=qr_module_f] qr_code = @s qr_code
execute as @e[name=qr_module,scores={qr_prg=10}] run scoreboard players operation @e[name=qr_module_f] qr_decode = @s qr_code
execute as @e[name=qr_module,scores={qr_prg=10}] run scoreboard players add @e[name=qr_module_f] qr_encode 0
execute as @e[name=qr_module,scores={qr_prg=10}] run scoreboard players add @e[name=qr_module_f] qr_encode_lall 0
scoreboard players set @e[name=qr_module,scores={qr_prg=10}] qr_prg 11

#
execute as @e[name=qr_module,scores={qr_prg=11}] at @e[name=qr_module_f,scores={qr_encode=0,qr_encode_lall=0..2}] run summon minecraft:armor_stand qr_route ~12~~
execute as @e[name=qr_module,scores={qr_prg=11}] at @e[name=qr_module_f,scores={qr_encode=1,qr_encode_lall=0..2}] run summon minecraft:armor_stand qr_route ~11~~
execute as @e[name=qr_module,scores={qr_prg=11}] at @e[name=qr_module_f,scores={qr_encode_lall=3}] run summon minecraft:armor_stand qr_route ~8~~
execute as @e[name=qr_module,scores={qr_prg=11}] at @e[name=qr_module_f,scores={qr_encode=0,qr_encode_lall=4..}] run summon minecraft:armor_stand qr_route ~1~~
execute as @e[name=qr_module,scores={qr_prg=11}] at @e[name=qr_module_f,scores={qr_encode=1,qr_encode_lall=4..}] run summon minecraft:armor_stand qr_route ~~~


execute as @e[name=qr_module,scores={qr_prg=11}] as @e[name=qr_module_f,scores={qr_encode=0}] run tag @e[name=qr_route,tag=!qr_route] add qr_route1
execute as @e[name=qr_module,scores={qr_prg=11}] as @e[name=qr_module_f,scores={qr_encode=1}] run tag @e[name=qr_route,tag=!qr_route] add qr_route2
execute as @e[name=qr_module,scores={qr_prg=11}] as @e[name=qr_module_f] run scoreboard players operation @e[name=qr_route,tag=!qr_route] qr_code = @s qr_code
execute as @e[name=qr_module,scores={qr_prg=11}] as @e[name=qr_module_f,scores={qr_encode_lall=0..2}] run scoreboard players add @e[name=qr_route,tag=!qr_route] qr_code -21
execute as @e[name=qr_module,scores={qr_prg=11}] as @e[name=qr_module_f,scores={qr_encode_lall=3}] run scoreboard players add @e[name=qr_route,tag=!qr_route] qr_code -17
execute as @e[name=qr_module,scores={qr_prg=11}] as @e[name=qr_module_f,scores={qr_encode_lall=4..}] run scoreboard players add @e[name=qr_route,tag=!qr_route] qr_code -1
execute as @e[name=qr_module,scores={qr_prg=11}] as @e[name=qr_module_f,scores={qr_decode=0..10}] run scoreboard players add @e[name=qr_route,tag=!qr_route] qr_code -9
execute as @e[name=qr_module,scores={qr_prg=11}] as @e[name=qr_module_f,scores={qr_decode=11..12}] run scoreboard players add @e[name=qr_route,tag=!qr_route] qr_code -5
execute as @e[name=qr_module,scores={qr_prg=11}] as @e[name=qr_module_f,scores={qr_decode=13..14}] run tag @e[name=qr_route,tag=!qr_route] add qr_route_sub


execute as @e[name=qr_module,scores={qr_prg=11}] as @e[name=qr_module_f] run tag @e[name=qr_route,tag=!qr_route] add qr_route
execute as @e[name=qr_module,scores={qr_prg=11}] as @e[name=qr_module_f] at @s run tp @s ~~~2
execute as @e[name=qr_module,scores={qr_prg=11}] as @e[name=qr_module_f,scores={qr_encode_lall=2}] at @s run tp @s ~~~1
execute as @e[name=qr_module,scores={qr_prg=11}] as @e[name=qr_module_f] run scoreboard players add @s qr_encode_lall 1
execute as @e[name=qr_module,scores={qr_prg=11}] as @e[name=qr_module_f] run scoreboard players add @s qr_decode -2
execute as @e[name=qr_module,scores={qr_prg=11}] as @e[name=qr_module_f] run scoreboard players add @s qr_encode 1
execute as @e[name=qr_module,scores={qr_prg=11}] as @e[name=qr_module_f,scores={qr_encode=2}] run scoreboard players set @s qr_encode 0

#
execute as @e[name=qr_route,tag=qr_route1] at @s if block ~~~ minecraft:air [] run setblock ~~1~ minecraft:blue_wool
execute as @e[name=qr_route,tag=qr_route1] at @s if block ~~~ minecraft:air [] if block ~-1~~1 minecraft:black_concrete [] run setblock ~~1~ minecraft:diamond_block
execute as @e[name=qr_route,tag=qr_route1] at @s if block ~~~ minecraft:air [] if block ~-1~~ minecraft:black_concrete [] run setblock ~~1~ minecraft:light_blue_wool
execute as @e[name=qr_route,tag=qr_route1] at @s if block ~~~ minecraft:air [] if block ~-1~~ minecraft:white_concrete [] run setblock ~~1~ minecraft:pink_wool
execute as @e[name=qr_route,tag=qr_route1] at @s if block ~~~ minecraft:air [] if block ~-1~~ minecraft:black_concrete [] if block ~-4~1~-2 minecraft:cyan_wool [] run setblock ~~1~ minecraft:emerald_block
execute as @e[name=qr_route,tag=qr_route1] at @s if block ~~~ minecraft:air [] if block ~-1~~ minecraft:white_concrete [] if block ~-2~1~ minecraft:diamond_block [] run setblock ~~1~ minecraft:light_gray_wool

#
execute as @e[name=qr_route,tag=qr_route2] at @s if block ~~~ minecraft:air [] run setblock ~~1~ minecraft:red_wool
execute as @e[name=qr_route,tag=qr_route2] at @s if block ~~~ minecraft:air [] if block ~~~-1 minecraft:white_concrete [] if block ~2~~ minecraft:white_concrete [] run setblock ~~1~ minecraft:purple_wool
execute as @e[name=qr_route,tag=qr_route2] at @s if block ~~~ minecraft:air [] if block ~1~~1 minecraft:black_concrete [] run setblock ~~1~ minecraft:black_wool
execute as @e[name=qr_route,tag=qr_route2] at @s if block ~~~ minecraft:air [] if block ~1~~ minecraft:black_concrete [] run setblock ~~1~ minecraft:orange_wool
execute as @e[name=qr_route,tag=qr_route2] at @s if block ~~~ minecraft:air [] if block ~1~~ minecraft:white_concrete [] run setblock ~~1~ minecraft:green_wool
execute as @e[name=qr_route,tag=qr_route2] at @s if block ~~~ minecraft:air [] if block ~1~~1 minecraft:black_concrete [] if block ~1~~ minecraft:white_concrete [] if block ~~~2 minecraft:white_concrete [] run setblock ~~1~ minecraft:cyan_wool
execute as @e[name=qr_route,tag=qr_route2] at @s if block ~~~ minecraft:air [] if block ~3~~3 minecraft:black_concrete [] if block ~~~2 minecraft:white_concrete [] if block ~~~5 minecraft:white_concrete [] run setblock ~~1~ minecraft:brown_wool
execute as @e[name=qr_route,tag=qr_route2] at @s if block ~~~ minecraft:air [] if block ~1~~ minecraft:black_concrete [] if block ~3~~2 minecraft:white_concrete [] run setblock ~~1~ minecraft:gold_block

#
execute as @e[name=qr_route] at @s run tp @s ~1~~
execute as @e[name=qr_route] run scoreboard players add @s qr_code -1
execute as @e[name=qr_route,scores={qr_code=0},tag=qr_route_sub] at @s run fill ~-1~1~ ~-5~1~ minecraft:diamond_block
execute as @e[name=qr_route,scores={qr_code=0},tag=qr_route_sub] at @s run fill ~-6~1~ ~-6~1~ minecraft:netherite_block
execute as @e[name=qr_route,scores={qr_code=0}] run kill @s

execute as @e[name=qr_module,scores={qr_prg=11}] as @e[name=qr_module_f,scores={qr_decode=..1}] run setblock ~11~1~ minecraft:bedrock
execute as @e[name=qr_module,scores={qr_prg=11}] as @e[name=qr_module_f,scores={qr_decode=..1}] run setblock ~~1~9 minecraft:yellow_wool
execute as @e[name=qr_module,scores={qr_prg=11}] as @e[name=qr_module_f,scores={qr_decode=..1}] run kill @s
execute as @e[name=qr_module,scores={qr_prg=11}] unless entity @e[name=qr_route] run scoreboard players set @e[name=qr_main,scores={qr_prg=16}] qr_prg 110
execute as @e[name=qr_module,scores={qr_prg=11}] unless entity @e[name=qr_route] run tp @s ~~2~
