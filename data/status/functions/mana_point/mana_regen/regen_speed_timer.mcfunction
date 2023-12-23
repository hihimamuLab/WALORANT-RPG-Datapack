### status:mana_point/mana_regen/regen_speed_timer

# mpの自然回復タイマー
scoreboard players add @s regen_speed_timer 1
execute if predicate status:mana_point/regen_mana/regen_speed_timer run function status:mana_point/mana_regen/mana_regen

# mpが0を下回らないようにする
execute if score @s mp < #0 Constant run scoreboard players operation @s mp = #0 Constant