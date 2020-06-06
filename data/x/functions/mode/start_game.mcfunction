# ゲームスタート
scoreboard objectives add CommandBlock dummy
execute store success score *enabled CommandBlock if block 246 59 -35 minecraft:comparator[powered=true]

execute if score *enabled CommandBlock matches 0 run tellraw @a {"text":"> コマンドブロックが無効です。 server.propertiesからenable-command-blockをtrueにして下さい","color":"red"}
execute unless score *enabled CommandBlock matches 0 run function x:mode/start

scoreboard objectives remove CommandBlock
