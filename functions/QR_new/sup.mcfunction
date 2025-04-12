execute as @e[name=qr_main,scores={qr_prg=102}] as @e[name=qr_sup] at @s run structure save qr_sup ~9~~ ~64~~ 
execute as @e[name=qr_main,scores={qr_prg=102}] as @e[name=qr_sup] at @s run structure load qr_sup ~1~~ 0_degrees none false true
execute as @e[name=qr_main,scores={qr_prg=102}] as @e[name=qr_sup] at @s run structure save qr_sup ~1~1~ ~8~1~ 
execute as @e[name=qr_main,scores={qr_prg=102}] as @e[name=qr_sup] at @s run structure load qr_sup ~57~~ 0_degrees none false true
execute as @e[name=qr_main,scores={qr_prg=102}] as @e[name=qr_sup] at @s run tp @s ~~1~
execute as @e[name=qr_main,scores={qr_prg=102}] as @e[name=qr_sup] at @s if block ~1~1~ minecraft:air [] run structure save qr_sup ~9~~ ~64~~
execute as @e[name=qr_main,scores={qr_prg=102}] as @e[name=qr_sup] at @s if block ~1~1~ minecraft:air [] run structure load qr_sup ~1~~  0_degrees none false true
execute as @e[name=qr_main,scores={qr_prg=102}] as @e[name=qr_sup] at @s if block ~1~1~ minecraft:air [] run fill ~57~~ ~64~~ minecraft:air
execute as @e[name=qr_main,scores={qr_prg=102}] as @e[name=qr_sup] at @s if block ~1~1~ minecraft:air [] run scoreboard players set @e[name=qr_main,scores={qr_prg=102}] qr_prg 8
