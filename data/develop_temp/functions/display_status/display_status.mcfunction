### develop_temp:display_status/display_status

# プレイヤー情報セット
scoreboard players operation 体力 player_status = @s hp
scoreboard players operation 最大体力 player_status = @s hp_max
scoreboard players operation 自然回復(体力) player_status = @s hp_regen
scoreboard players operation マナ player_status = @s mp
scoreboard players operation 最大マナ player_status = @s mp_max
scoreboard players operation 自然回復(マナ) player_status = @s mp_regen
scoreboard players operation 物攻 player_status = @s atk
scoreboard players operation 魔攻 player_status = @s mgc_atk
scoreboard players operation 防御力 player_status = @s def
scoreboard players operation 移動速度 player_status = @s spd
scoreboard players operation 会心率 player_status = @s crt
scoreboard players operation レベル player_status = @s level
scoreboard players operation 経験値 player_status = @s xp
scoreboard players operation 必要経験値 player_status = @s next_xp

# advancements剥奪
advancement revoke @s only develop_temp:player_selector