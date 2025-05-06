
n = [
"QR Version 13	6	34	62",			
"QR Version 14	6	26	46	66",			
"QR Version 15	6	26	48	70",			
"QR Version 16	6	26	50	74",			
"QR Version 17	6	30	54	78",			
"QR Version 18	6	30	56	82",			
"QR Version 19	6	30	58	86",			
"QR Version 20	6	34	62	90",			
"QR Version 21	6	28	50	72	94",		
"QR Version 22	6	26	50	74	98",		
"QR Version 23	6	30	54	78	102",		
"QR Version 24	6	28	54	80	106",		
"QR Version 25	6	32	58	84	110",		
"QR Version 26	6	30	58	86	114",		
"QR Version 27	6	34	62	90	118",		
"QR Version 28	6	26	50	74	98	122",	
"QR Version 29	6	30	54	78	102	126",	
"QR Version 30	6	26	52	78	104	130",	
"QR Version 31	6	30	56	82	108	134",	
"QR Version 32	6	34	60	86	112	138",	
"QR Version 33	6	30	58	86	114	142",	
"QR Version 34	6	34	62	90	118	146",	
"QR Version 35	6	30	54	78	102	126	150",
"QR Version 36	6	24	50	76	102	128	154",
"QR Version 37	6	28	54	80	106	132	158",
"QR Version 38	6	32	58	84	110	136	162",
"QR Version 39	6	26	54	82	110	138	166",
"QR Version 40	6	30	58	86	114	142	170"
]

mode = 13
prg = 0

with open(r"C:\Users\ZHANGBaoHang\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\development_behavior_packs\Fairy-Command\functions\QR\tool\alignment_pattern_locations.mcfunction",'w',encoding='utf-8') as f:
    for i in n:

        mode += 1
        prg = 0

        loc = i[14:].split()
        f.write("\n")
        for j in loc:
            f.write("execute as @e[name=qr_module,scores={qr_prg=4,qr_decode=%s}] run scoreboard players set @e[name=qr_module_b,scores={qr_prg=%s}] qr_decode %s\n" % (mode-1, prg + 1, loc[prg]) )
            prg += 1
