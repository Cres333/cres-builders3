# アマスタのID生成
## 12回実行すれば1～12まで各1体ずつ用意される
scoreboard players add @e[scores={DBID=1..},tag=db] DBID 1
scoreboard players set @e[limit=1,scores={DBID=0},tag=name] DBID 1
scoreboard players set @e[limit=1,scores={DBID=0},tag=title] DBID 1
scoreboard players set @e[limit=1,scores={DBID=0},tag=answer1] DBID 1
scoreboard players set @e[limit=1,scores={DBID=0},tag=answer2] DBID 1
scoreboard players set @e[limit=1,scores={DBID=0},tag=answer3] DBID 1
