### status:mana_point/mana_regen/mana_regen

# タイマーのスコアリセット
scoreboard players set @s mp_regen_speed_timer 0

# mpの自然回復量
#level 0~20
execute if predicate status:mana_point/regen_mana/level0_20 run scoreboard players set @s mp_regen 2
#level 21~40
execute if predicate status:mana_point/regen_mana/level21_40 run scoreboard players set @s mp_regen 4
#level 41~60
execute if predicate status:mana_point/regen_mana/level41_60 run scoreboard players set @s mp_regen 6
#level 61~80
execute if predicate status:mana_point/regen_mana/level61_80 run scoreboard players set @s mp_regen 8
#level 81~100
execute if predicate status:mana_point/regen_mana/level81_100 run scoreboard players set @s mp_regen 10

# mpの回復
scoreboard players operation @s mp += @s mp_regen