file1 = open(r"C:\Users\ZHANGBaoHang\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\development_behavior_packs\Fairy-Command\functions\QR_new\tool\version_information.txt",'r',encoding='utf-8')
file2 = open(r"C:\Users\ZHANGBaoHang\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\development_behavior_packs\Fairy-Command\functions\QR_new\tool\version.mcfunction",'w',encoding='utf-8')

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
        
        file2.write("execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches %s run scoreboard players set @e[name=qr_decode_place] qr_encode %s\n" % ( num , int(version[2])+1 ))
        file2.write("execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches %s run scoreboard players set @s qr_xor %s\n" % ( num , version[-1] ))
        file2.write("execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches %s run scoreboard players set @s GF_1 %s\n" % ( num , int(version[1])*8 ))
        if len(version) == 7:
            file2.write("execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches %s run scoreboard players set @s qr_split %s\n" % ( num , int(version[-2]) + int(version[-4]) ))
            file2.write("""execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches %s run tellraw @a { "rawtext": [ { "text": "开始生成(版本: %s,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\\n组1块数: %s,码总数: %s,数据码数: %s, 纠错码数: %s\\n组2块数: %s,码总数: %s,数据码数: %s, 纠错码数: %s\\n开始生成生成多项式(%s位纠错码)\\n开始编码" } ] }\n\n""" % (num , num , version[3] , int(version[2])+int(version[4]) , version[4] , version[2] , version[5] , int(version[2])+int(version[6]) , version[6] , version[2], version[2] ))
        else:
            file2.write("execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches %s run scoreboard players set @s qr_split %s\n" % ( num , int(version[-2]) ))
            file2.write("""execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches %s run tellraw @a { "rawtext": [ { "text": "开始生成(版本: %s,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: %s,码总数: %s,数据码数: %s, 纠错码数: %s\\n开始生成生成多项式(%s位纠错码)\\n开始编码" } ] }\n\n""" % (num , num , version[3] , int(version[2])+int(version[4]) , version[4] , version[2], version[2] ))

        num += 1



        print(version)
    i += 1



file1.close()
file2.close()
