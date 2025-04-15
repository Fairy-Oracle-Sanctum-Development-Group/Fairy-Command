file1 = open(r"C:\Users\ZHANGBaoHang\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\development_behavior_packs\Fairy-Command\functions\QR\tool\version_information.txt",'r',encoding='utf-8')
file2 = open(r"C:\Users\ZHANGBaoHang\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\development_behavior_packs\Fairy-Command\functions\QR\tool\mode.mcfunction",'w',encoding='utf-8')

i = 1
num = 1
s = ["(","+","="]

while i <= 160:
    line = file1.readline()
    if "L" in line:
        version = line.split()
        version.pop()
        version.pop()
        version.pop()
        if version[-1] == '+':
            version.pop()
            version.pop()

        file2.write("execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches %s at @e[name=qr_split_set] run structure load qr_mode_%s ~1~~2 0_degrees none false true\n" % ( num , num ))
        print(version)
        num += 1
    
    i += 1
    

file1.close()
file2.close()
