### status:mana_point/max_mana/max_mana

# mp最大値リセット
scoreboard players set @s mp_max 0
# mp最大値計算 50 - level ^ 2 / 100 + 2.5 * level
scoreboard players operation $Levels level = @s level

scoreboard players operation $Max_MP_Calc_1 level = $Levels level
scoreboard players operation $Max_MP_Calc_1 level *= $Max_MP_Calc_1 level
scoreboard players operation $Max_MP_Calc_1 level /= #100 Constant

scoreboard players operation $Max_MP_Calc_2 level = $Levels level
scoreboard players operation $Max_MP_Calc_2 level *= #25 Constant
scoreboard players operation $Max_MP_Calc_2 level /= #10 Constant

scoreboard players operation $Answer mp_max = #50 Constant
scoreboard players operation $Answer mp_max -= $Max_MP_Calc_1 level
scoreboard players operation $Answer mp_max += $Max_MP_Calc_2 level
scoreboard players operation @s mp_max = $Answer mp_max

# スコアのリセット
scoreboard players reset $Levels level
scoreboard players reset $Answer mp_max
scoreboard players reset $Max_MP_Calc_1 mp_max
scoreboard players reset $Max_MP_Calc_2 mp_max