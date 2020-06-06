# execute positioned n 60 n run this

execute if score *playerNum Grobal matches 1.. positioned ~ ~ ~ run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Marker:1b,NoGravity:1b,Tags:["area","n01"]}
execute if score *playerNum Grobal matches 2.. positioned ~40 ~ ~ run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Marker:1b,NoGravity:1b,Tags:["area","n02"]}
execute if score *playerNum Grobal matches 3.. positioned ~80 ~ ~ run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Marker:1b,NoGravity:1b,Tags:["area","n03"]}
execute if score *playerNum Grobal matches 4.. positioned ~120 ~ ~ run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Marker:1b,NoGravity:1b,Tags:["area","n04"]}
execute if score *playerNum Grobal matches 5.. positioned ~160 ~ ~ run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Marker:1b,NoGravity:1b,Tags:["area","n05"]}
execute if score *playerNum Grobal matches 6.. positioned ~200 ~ ~ run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Marker:1b,NoGravity:1b,Tags:["area","n06"]}
execute if score *playerNum Grobal matches 7.. positioned ~240 ~ ~ run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Marker:1b,NoGravity:1b,Tags:["area","n07"]}
execute if score *playerNum Grobal matches 8.. positioned ~280 ~ ~ run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Marker:1b,NoGravity:1b,Tags:["area","n08"]}
execute if score *playerNum Grobal matches 9.. positioned ~320 ~ ~ run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Marker:1b,NoGravity:1b,Tags:["area","n09"]}
execute if score *playerNum Grobal matches 10.. positioned ~360 ~ ~ run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Marker:1b,NoGravity:1b,Tags:["area","n10"]}
execute if score *playerNum Grobal matches 11.. positioned ~400 ~ ~ run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Marker:1b,NoGravity:1b,Tags:["area","n11"]}
execute if score *playerNum Grobal matches 12.. positioned ~440 ~ ~ run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Marker:1b,NoGravity:1b,Tags:["area","n12"]}

execute if score *playerNum Grobal matches 1.. run schedule function x:area/common/timer/01 10t
execute if score *playerNum Grobal matches 2.. run schedule function x:area/common/timer/02 20t
execute if score *playerNum Grobal matches 3.. run schedule function x:area/common/timer/03 30t
execute if score *playerNum Grobal matches 4.. run schedule function x:area/common/timer/04 40t
execute if score *playerNum Grobal matches 5.. run schedule function x:area/common/timer/05 50t
execute if score *playerNum Grobal matches 6.. run schedule function x:area/common/timer/06 60t
execute if score *playerNum Grobal matches 7.. run schedule function x:area/common/timer/07 70t
execute if score *playerNum Grobal matches 8.. run schedule function x:area/common/timer/08 80t
execute if score *playerNum Grobal matches 9.. run schedule function x:area/common/timer/09 90t
execute if score *playerNum Grobal matches 10.. run schedule function x:area/common/timer/10 100t
execute if score *playerNum Grobal matches 11.. run schedule function x:area/common/timer/11 110t
execute if score *playerNum Grobal matches 12.. run schedule function x:area/common/timer/12 120t

schedule function x:area/common/timer/kill 130t
