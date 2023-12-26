### status:atk/level_up

# レベルアップ時のatk加算
#AEC召喚
summon area_effect_cloud ~ ~ ~ {Tags:["Gen_rng"]}

#AECのUUID取得
execute store result score @s rng run data get entity @e[tag=Gen_rng, distance=..0.01, limit=1] UUID[0]

#取得したUUID%100
scoreboard players operation @s rng %= #100 Constant

#predicatesを使用してatk加算
execute if predicate status:atk/rng0_33 run scoreboard players add @s atk 3
execute if predicate status:atk/rng34_66 run scoreboard players add @s atk 4
execute if predicate status:atk/rng67_99 run scoreboard players add @s atk 5