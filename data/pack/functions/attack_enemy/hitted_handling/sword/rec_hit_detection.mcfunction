### pack:attack_enemy/hitted_handling/sword/rec_hit_detection

#当たり判定
execute positioned ~-0.125 ~-0.125 ~-0.125 as @e[dx=0] positioned ~-0.75 ~-0.75 ~-0.75 if entity @s[dx=0] run effect give @s[type=!minecraft:player] glowing 1 0 true

#リーチ分の再帰
execute positioned ^ ^ ^0.25 if entity @s[distance=..3.5] run function pack:attack_enemy/hitted_handling/sword/rec_hit_detection