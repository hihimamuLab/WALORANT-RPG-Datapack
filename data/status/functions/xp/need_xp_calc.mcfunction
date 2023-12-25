### status:xp/level_up

# レベルアップするための必要xp計算 xp = 5000 - {(level - 99) ^ 2 / 100}
scoreboard players operation $NextLevelXP xp = @s level
scoreboard players operation $NextLevelXP xp -= #99 Constant

scoreboard players operation $NextLevelXP xp *= $NextLevelXP xp
scoreboard players operation $NextLevelXP xp /= #2 Constant

scoreboard players operation $PlayerNeedXP xp = #5000 Constant
scoreboard players operation $PlayerNeedXP xp -= $NextLevelXP xp

scoreboard players operation @s next_xp = $PlayerNeedXP xp

# スコアボードリセット
scoreboard players reset $NextLevelXP xp
scoreboard players reset $PlayerNeedXP xp