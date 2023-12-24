### status:mana_point/max_mana/max_mana

# mp最大値リセット
scoreboard players set @s mp_max 0

# mp最大値計算 mp_max = 150 - {(x - 100) ^ 2 / 100}
scoreboard players operation $MaxMPCalc mp = @s level
scoreboard players operation $MaxMPCalc mp -= #100 Constant

scoreboard players operation $MaxMPCalc mp *= $MaxMPCalc mp
scoreboard players operation $MaxMPCalc mp /= #100 Constant

scoreboard players operation $PlayerMPMax mp = #150 Constant
scoreboard players operation $PlayerMPMax mp -= $MaxMPCalc mp

scoreboard players operation @s mp_max = $PlayerMPMax mp

# スコアボードリセット
scoreboard players reset $MaxMPCalc mp
scoreboard players reset $PLayerMPMax mp