### status:max_mana/max_mana

# mp最大値, levelリセット
scoreboard players set @s level 0
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