### status:player_selector

# functions 呼び出し
execute as @s run function status:mana_point/mana_bar/mana_bar
execute as @s run function status:mana_point/max_mana/max_mana
execute as @s run function status:mana_point/mana_regen/regen_speed_timer

# advancements剥奪
advancement revoke @s only status:player_selector