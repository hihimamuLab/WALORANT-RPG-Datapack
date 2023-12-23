### status:mana_point/mana_regen/regen_speed_timer

# hpの自然回復タイマー
execute if predicate status:timer/regen_speed_timer run function status:hit_point/regen_hp/regen_hp

# hpが0を下回らないようにする
execute if score @s hp < #0 Constant run scoreboard players operation @s hp = #0 Constant

# hpがhp_maxを超過しないようにする
execute if score @s hp > @s hp_max run scoreboard players operation @s hp = @s hp_max