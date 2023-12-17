### pack:attack_enemy/left_click_detetion/summon_lcd_slime

#左クリック検知用スライム召喚
execute as @a[tag=has_weapon] at @s anchored eyes run summon minecraft:slime ^ ^ ^ {Tags:["hit_detection"], NoAI:1b, NoGravity:1b, Silent:1b, PortalCooldown:1, Team:"hit_detection"}
