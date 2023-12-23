### status:player_selector

# functions 呼び出し
#mp
execute as @s run function status:mana_point/mana_bar/mana_bar
execute as @s run function status:mana_point/max_mana/max_mana
execute as @s run function status:mana_point/mana_regen/regen_speed_timer
#hp
execute as @s run function status:hit_point/max_hp/max_hp
#timer
execute as @s run function status:timer

# advancements剥奪
advancement revoke @s only status:player_selector