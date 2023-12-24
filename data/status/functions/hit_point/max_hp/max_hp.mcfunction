### status:hit_point/max_hp/max_hp

# hp最大値リセット
scoreboard players set @s hp_max 0

# hp最大値計算 hp_max = 150 - {(x - 100) ^ 2 / 80}
scoreboard players operation $MaxHPCalc hp = @s level
scoreboard players operation $MaxHPCalc hp -= #100 Constant

scoreboard players operation $MaxHPCalc hp *= $MaxHPCalc hp
scoreboard players operation $MaxHPCalc hp /= #80 Constant

scoreboard players operation $PlayerMaxHP hp = #150 Constant
scoreboard players operation $PlayerMaxHP hp -= $MaxHPCalc hp

scoreboard players operation @s hp_max = $PlayerMaxHP hp

# スコアボードリセット
scoreboard players reset $MaxHPCalc hp
scoreboard players reset $PlayerMaxHP hp