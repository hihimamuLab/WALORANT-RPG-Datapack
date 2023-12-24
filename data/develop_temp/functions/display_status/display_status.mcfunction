### develop_temp:display_status/display_status

# プレイヤー情報セット
scoreboard players operation hp player_status = @s hp
scoreboard players operation hp_max player_status = @s hp_max
scoreboard players operation hp_regen player_status = @s hp_regen
scoreboard players operation mp player_status = @s mp
scoreboard players operation mp_max player_status = @s mp_max
scoreboard players operation mp_regen player_status = @s mp_regen
scoreboard players operation atk player_status = @s atk
scoreboard players operation mgc_atk player_status = @s mgc_atk
scoreboard players operation def player_status = @s def
scoreboard players operation spd player_status = @s spd
scoreboard players operation crt player_status = @s crt
scoreboard players operation level player_status = @s level
scoreboard players operation xp player_status = @s xp

# advancements剥奪
advancement revoke @s only develop_temp:player_selector