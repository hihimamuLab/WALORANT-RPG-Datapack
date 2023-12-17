### pack:attack_enemy/left_click_detetion/kill_lcd_slime

#左クリック検知用インタラクション削除
tp @e[type=minecraft:slime, tag=hit_detection, limit=1] ~ -1000 ~
kill @e[type=minecraft:slime, tag=hit_detection, limit=1]