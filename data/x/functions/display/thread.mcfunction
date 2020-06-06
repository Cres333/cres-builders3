execute unless entity @p[team=play] if score *mode Grobal matches 0 run function x:display/message/action/always
execute unless entity @p[team=play] if score *mode Grobal matches 1 run function x:display/build/action/always
execute unless entity @p[team=play] if score *mode Grobal matches 2 run function x:display/tail/action/always

execute if score *thread SingleThread matches 1 run schedule function x:display/thread 10t
