n = 14

with open(r"C:\Users\ZHANGBaoHang\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\development_behavior_packs\Fairy-Command\functions\QR\tool\fill_summon.mcfunction",'w',encoding='utf-8') as f:
    for i in range(14,41):
        f.write("execute if score \"mode\" qr_uid matches %s as @e[name=qr_module,scores={qr_prg=1}] at @s run structure load qr_via_%s ~8~~\n" % (n , n))
        n += 1
