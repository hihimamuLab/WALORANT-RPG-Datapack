### status:xp/level_up

# 自分のnext_xpリセット
scoreboard players set @s next_xp 0

# レベルアップするための必要xp計算 next_xp = 20 * (level + 1) ^ 2
scoreboard players operation $NextLevelXP xp = @s level
scoreboard players operation $NextLevelXP xp += #1 Constant

scoreboard players operation $NextLevelXP xp *= $NextLevelXP xp
scoreboard players operation $NextLevelXP xp *= #20 Constant

scoreboard players operation @s next_xp = $NextLevelXP xp

# スコアボードリセット
scoreboard players reset $NextLevelXP

# temp comment
#y=20x^{2}\left\{0\le x\le100\right\}