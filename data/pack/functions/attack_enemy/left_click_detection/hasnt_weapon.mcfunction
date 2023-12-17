### pack:attack_enemy/left_click_detetion/hasnt_weapon

#武器未所持時ファンクション
tag @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] remove has_weapon
kill @e[type=minecraft:interaction, tag=hit_detection]