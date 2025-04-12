execute as @e[name=qr_tool_x] at @s positioned ~~~1 run structure save qr_tool1 ~63~1~63 ~~~
execute as @e[name=qr_tool_x] at @s positioned ~~~1 run structure load qr_tool1 ~4~~ 0_degrees none false true
kill @e[name=qr_tool_x]

execute as @e[name=qr_tool_z] at @s positioned ~1~~ run structure save qr_tool2 ~63~1~63 ~~~
execute as @e[name=qr_tool_z] at @s positioned ~1~~ run structure load qr_tool2 ~~~4 0_degrees none false true
kill @e[name=qr_tool_z]

