file1 = open(r"C:\Users\ZHANGBaoHang\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\development_behavior_packs\Fairy-Command\functions\QR_new\tool\version_information.txt",'r',encoding='utf-8')
file2 = open(r"C:\Users\ZHANGBaoHang\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\development_behavior_packs\Fairy-Command\functions\QR_new\tool\split_config.mcfunction",'w',encoding='utf-8')

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
        
        if len(version) == 7:
            file2.write("#\nexecute if score mode qr_uid matches %s run scoreboard players set @e[name=qr_split,scores={qr_code=%s..%s}] qr_split %s\n" % ( num , int(version[-2])+1 , int(version[-2])+int(version[-4]) , int(version[-3]) ))
            file2.write("execute if score mode qr_uid matches %s run scoreboard players set @e[name=qr_split,scores={qr_code=1..%s}] qr_split %s\n\n" % ( num , int(version[-2]) , int(version[-1]) ))
        else:
            file2.write("#\nexecute if score mode qr_uid matches %s run scoreboard players set @e[name=qr_split,scores={qr_code=1..%s}] qr_split %s\n\n" % ( num , int(version[-2]) , int(version[-1]) ))
            
            num += 1

        print(version)
    i += 1



file1.close()
file2.close()
