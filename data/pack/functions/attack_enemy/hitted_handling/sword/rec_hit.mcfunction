### pack:attack_enemy/hitted_handling/sword/rec_hit

#当たり判定
execute as @e[type=!minecraft:player, dx=0] anchored eyes positioned ^-0.125 ^-0.125 ^-0.125 if entity @s[dx=0] anchored eyes positioned ^-0.8 ^-0.8 ^-0.8 run effect give @s glowing 1 1 true

#リーチ分の再帰
execute positioned ^ ^ ^0.25 if entity @s[distance=..3] run function pack:attack_enemy/hitted_handling/sword/rec_hit

#advancements剥奪
advancement revoke @a[advancements={pack:hit_detection=true}] only pack:hit_detection