# Database初期化
## 強制的に安全圏をロード
forceload add 10000 10000
## プレイヤー名一時保存先
setblock 10000 1 10000 minecraft:oak_wall_sign[facing=north]
setblock 10000 2 10000 minecraft:oak_wall_sign[facing=north]
setblock 10000 3 10000 minecraft:oak_wall_sign[facing=north]
## お題・回答保存先
execute positioned 10000 0 10000 run function x:database/armor_stand/_summon_armor_stand
