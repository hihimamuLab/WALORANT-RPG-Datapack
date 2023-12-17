### pack:attack_enemy/main

#武器所持検知
tag @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] add has_weapon
execute as @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] at @s run function pack:attack_enemy/left_click_detection/hasnt_weapon

#武器所持時左クリック検知用スライム召喚
execute as @a[tag=has_weapon] at @s run function pack:attack_enemy/left_click_detection/summon_lcd_interaction

#左クリック検知用スライムキル
execute as @e[type=minecraft:interaction, tag=hit_detection] run function pack:attack_enemy/left_click_detection/kill_lcd_interaction